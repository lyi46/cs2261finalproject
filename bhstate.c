
#include "gba.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "bh.h"
#include "bhstate.h"
#include "soot.h"
#include "sprites.h"

SPRITE soot;
int intro;

void initbh() {
    initsoot();
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    DMANow(3, bhPal, BG_PALETTE, 200);
}

void initsoot() {
    soot.x = 40; soot.y = 120; soot.xVel = -1; soot.width = 15; soot.height = 15;
}

void drawbh() {
    drawFullscreenImage4(bhBitmap);
    drawsoot();
}

void drawsoot() {
    drawCircle4(soot.x, soot.y, soot.width, 0);
    drawCircle4(35, 120, 4, 199);
    drawCircle4(34, 121, 4, 199);
    drawCircle4(47, 120, 4, 199);
    drawCircle4(48, 121, 4, 199);

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