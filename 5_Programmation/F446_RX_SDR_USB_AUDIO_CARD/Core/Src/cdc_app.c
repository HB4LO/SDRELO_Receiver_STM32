/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2019 Ha Thach (tinyusb.org)
 * Copyright (c) 2022 Angel Molina (angelmolinu@gmail.com)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */

#include "tusb.h"
#include "common.h"
#include "main.h"

#include "tusb.h"
#include "common.h"
#include "main.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

static char cat_rx_buf[64];
static uint8_t cat_rx_idx = 0;

static uint8_t current_mode = 3; // MD3 could be roughly USB or DIGI
static uint8_t is_tx = 0;

void tud_cdc_line_state_cb(uint8_t itf, bool dtr, bool rts) {
  (void) itf; (void) rts;
}

void process_cat_command(uint8_t itf, const char* cmd, uint8_t len) {
    char tx_buf[64];
    tx_buf[0] = '\0';

    if (len < 2) return;

    if (strncmp(cmd, "FA", 2) == 0) {
        if (len == 2) { // "FA;" Get Freq
            sprintf(tx_buf, "FA%011lu;", (unsigned long)current_freq);
        } else { // "FA00007074000;" Set Freq (FA + 11 chars freq)
            if (len >= 13) {
                char freq_str[12];
                strncpy(freq_str, cmd + 2, 11);
                freq_str[11] = '\0';
                current_freq = strtoul(freq_str, NULL, 10);
                Setup_Tayloe_Mixer_LO(current_freq);
            }
        }
    }
    else if (strncmp(cmd, "IF", 2) == 0) { 
        // Kenwood TS-480 IF response (Must be EXACTLY 37 chars of payload + ;)
        // Using exactly 8 trailing zeros instead of 9 to perfectly align to expected data length!
        sprintf(tx_buf, "IF%011lu     +000000000%d%d0000000;",
                (unsigned long)current_freq, (is_tx ? 1 : 0), current_mode % 10);
    }
    else if (strncmp(cmd, "ID", 2) == 0) {
        sprintf(tx_buf, "ID020;"); // ID020 is TS-480
    }
    else if (strncmp(cmd, "PS", 2) == 0) {
        if (len == 2) sprintf(tx_buf, "PS1;"); // Power status on
    }
    else if (strncmp(cmd, "AI", 2) == 0) {
        if (len == 2) sprintf(tx_buf, "AI0;"); // Auto info off
    }
    else if (strncmp(cmd, "MD", 2) == 0) {
        if (len == 2) {
            sprintf(tx_buf, "MD%d;", current_mode);
        } else if (len >= 3) {
            current_mode = cmd[2] - '0';
        }
    }
    else if (strncmp(cmd, "RX", 2) == 0) {
        is_tx = 0;
    }
    else if (strncmp(cmd, "TX", 2) == 0) {
        if (len == 2 || len >= 3) {
            is_tx = 1;
        }
    }
    else if (strncmp(cmd, "AG", 2) == 0) {} // AF Gain dummy
    else if (strncmp(cmd, "XT", 2) == 0) {} 
    else if (strncmp(cmd, "RT", 2) == 0) {} 
    else if (strncmp(cmd, "RC", 2) == 0) {} // RIT clear
    else if (strncmp(cmd, "FL", 2) == 0) {} // Filter
    else if (strncmp(cmd, "RS", 2) == 0) {}
    else if (strncmp(cmd, "VX", 2) == 0) {} // VOX

    if (strlen(tx_buf) > 0) {
        tud_cdc_n_write(itf, tx_buf, strlen(tx_buf));
        tud_cdc_n_write_flush(itf);
    }
}

void tud_cdc_rx_cb(uint8_t itf) {
    uint32_t count = tud_cdc_available();
    if (count > 0) {
        char buf[64];
        uint32_t read_bytes = tud_cdc_n_read(itf, buf, sizeof(buf));
        for (uint32_t i = 0; i < read_bytes; i++) {
            char c = buf[i];
            if (c == ';') { // End of command
                cat_rx_buf[cat_rx_idx] = '\0';
                process_cat_command(itf, cat_rx_buf, cat_rx_idx);
                cat_rx_idx = 0;
            } else if (cat_rx_idx < sizeof(cat_rx_buf) - 1) {
                if (isprint(c)) { // Only store printable chars
                    cat_rx_buf[cat_rx_idx++] = c;
                }
            }
        }
    }
}
