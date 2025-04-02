#include "gba.h"
#include "mode0.h"
#include "mode4.h"
#include "sprites.h"
#include "print.h"
#include "game1.h"
#include "chiriro.h"
#include "tilemap.h"
#include "tileset.h"
#include "start.h"
#include "pause.h"

unsigned short colors[8] = {RED, BROWN, BLUE, LIGHTBROWN, LIGHTBLUE, MAGENTA, WHITE, BLACK};

enum {START, GAME1, GAME2, INST, PAUSE};
int state;
void initialize(); void update(); void draw(); 
void startframe(); void start(); void game1(); void game1frame();
int hOff; int vOff; int rSeed;
OBJ_ATTR shadowOAM[128];
unsigned short buttons;
unsigned short oldButtons;

int main() {
    initialize4(); // Start in Mode 4
    state = START; // Set the initial state

    while (1) {
        oldButtons = buttons;
        buttons = REG_BUTTONS;
        switch (state) {
            case START:
                startframe();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    initialize4();
                    inst();
                    state = INST;
                }
                break;
            case INST:
                instframe();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    // initialize0();
                    game1frame();
                    state = GAME1;
                }
                break;
            case GAME1:
                game1();
                if (BUTTON_PRESSED(BUTTON_SELECT)) {
                    initialize4();
                    state = START; 
                }
                if (BUTTON_PRESSED(BUTTON_START)) {
                    initialize4();
                    pauseframe();
                    state = PAUSE;
                }
                break;
            case GAME2:
                game2();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    prevstate = GAME2;
                    initialize0();
                    pauseframe();
                    state = PAUSE;
                }
            case PAUSE:
                pause();
                if (BUTTON_PRESSED(BUTTON_START)) {
                    initialize0();
                    game1frame();
                    state = GAME1;
                }
                break;
        }
    }

    return 0;
}

void initialize4() {
    mgba_open();
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    buttons = REG_BUTTONS;
    oldButtons = 0;
    startframe();
    initSound();
}

void initialize0() {
    mgba_open();
    REG_DISPCTL= MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(27) | BG_SIZE_LARGE | BG_8BPP;
    buttons = REG_BUTTONS;
    oldButtons = 0;
}

void start() {
    rSeed++;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        instframe();
    }
}

void startframe() {
    DMANow(3, startPal, BG_PALETTE, 256);
    drawFullscreenImage4(startBitmap);
    waitForVBlank();
    flipPages();
    state = START;
    rSeed = 0;
}

void inst() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        game1frame();
        initGame1();
    }
}

void instframe() {
    inststate();
    waitForVBlank();
    flipPages();
    state = INST;
}

void game1frame() {
    initialize0();

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(27) | BG_SIZE_LARGE | BG_8BPP;
    DMANow(3, tilesetTiles, &CHARBLOCK[0], tilesetTilesLen/2);
    DMANow(3, tilemapMap, &SCREENBLOCK[27], tilemapMapLen/2);
    DMANow(3, tilesetPal, BG_PALETTE, 256);

    // Loading sprites into appropriate place in memory
    DMANow(3, chiriroTiles, &CHARBLOCK[4], chiriroTilesLen/2);
    DMANow(3, chiriroPal, SPRITE_PAL, chiriroPalLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    hOff = 0;
    vOff = 0;
    initGame1();
    state = GAME1;
}

void game1() {
    updateGame1();
    waitForVBlank();
    drawGame1();
    DMANow(3, shadowOAM, OAM, 128*4);
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseframe();
        return;
    }
    if (intro == 1) {
        bhframe();
        return;
    }
}

void game2frame() {
    //nothingyet
}

void game2() {
    //nothingyet
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseframe();
        return;
    }
}

void pauseframe() {
    pausestate();
    waitForVBlank();
    flipPages();
    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        game1frame();
        initGame1();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        startframe();
    }
}