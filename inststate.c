
#include "gba.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "instructions.h"
#include "inststate.h"



void initinst() {
    DMANow(3, instructionsPal, BG_PALETTE, 256);

}


void drawinst() {
    drawFullscreenImage4(instructionsBitmap);

}


void inststate() {
    initinst(); 

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        drawinst();
        waitForVBlank();
        flipPages();
        if (BUTTON_PRESSED(BUTTON_START)) {
            break;
        }
    }
}