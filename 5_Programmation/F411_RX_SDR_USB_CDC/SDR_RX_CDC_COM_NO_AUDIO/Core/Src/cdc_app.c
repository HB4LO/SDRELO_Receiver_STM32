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

typedef struct {
    const char *name;
    uint32_t frequency;
} ham_band_t;

static const ham_band_t HAM_BANDS[] = {
    {"160m", 1840000},
    {"80m", 3573000},
    {"40m", 7074000},
    {"30m", 10136000},
    {"20m", 14074000},
    {"17m", 18100000},
    {"15m", 21074000},
    {"12m", 24915000},
    {"10m", 28074000}
};

#define NUM_HAM_BANDS (sizeof(HAM_BANDS) / sizeof(HAM_BANDS[0]))
static uint8_t current_band_idx = 2; // Default to 40m

// Invoked when cdc when line state changed e.g connected/disconnected
void tud_cdc_line_state_cb(uint8_t itf, bool dtr, bool rts) {
  (void) itf;
  (void) rts;

  if (dtr) {
    // Terminal connected
  } else {
    // Terminal disconnected
  }
}

// Invoked when CDC interface received data from host
void tud_cdc_rx_cb(uint8_t itf) {
  uint8_t buf[64];
  char msg[64];

  uint32_t count;
  bool band_changed = false;

  // connected() check for DTR bit
  // Most but not all terminal client set this when making connection
  if (tud_cdc_connected()) {
    if (tud_cdc_available() > 0) {
      count = tud_cdc_n_read(itf, buf, sizeof(buf));
      
      for (uint32_t i = 0; i < count; i++) {
        if (buf[i] == '+') {
            if (current_band_idx < NUM_HAM_BANDS - 1) {
                current_band_idx++;
                band_changed = true;
            }
        } else if (buf[i] == '-') {
            if (current_band_idx > 0) {
                current_band_idx--;
                band_changed = true;
            }
        }
      }

      if (band_changed) {
          Setup_Tayloe_Mixer_LO(HAM_BANDS[current_band_idx].frequency);
      }
      
      if (band_changed) {
          sprintf(msg, "Changed to %s Band (%lu Hz)\r\n", HAM_BANDS[current_band_idx].name, (unsigned long)HAM_BANDS[current_band_idx].frequency);
          tud_cdc_n_write(itf, msg, (uint32_t)strlen(msg));
      }
      
      tud_cdc_n_write_flush(itf);
    }
  }
}
