
#include "gba.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "pause.h"
#include "pausestate.h"



void initpause() {
    DMANow(3, pausePal, BG_PALETTE, 256);

}


void drawpause() {
    drawFullscreenImage4(pauseBitmap);

}


void pausestate() {
    initpause(); 

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        drawpause();
        waitForVBlank();
        flipPages();
        if (BUTTON_PRESSED(BUTTON_START)) {
            break;
        }
    }
}