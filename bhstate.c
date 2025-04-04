
#include "gba.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "bh.h"
#include "bhstate.h"
#include "sprites.h"

int intro;

void initbh() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    DMANow(3, bhPal, BG_PALETTE, 200);
}


void drawbh() {
    drawFullscreenImage4(bhBitmap);
}


void bhstate() {
    initbh(); 

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        drawbh();
        waitForVBlank();
        flipPages();
        if (BUTTON_PRESSED(BUTTON_START)) {
            break;
        }
        if (BUTTON_PRESSED(BUTTON_SELECT)) {
            intro = 2;
        }
    }
}