
#include "gba.h"
#include "mode4.h"
#include "print.h"
#include <stdlib.h>
#include <stdio.h>
#include "bhtm.h"
#include "bhstate.h"
#include "sprites.h"

SPRITE player;
SPRITE haku;
int intro;

void initbh() {
    DMANow(3, shadowOAM, OAM, 128*4);

    
    initPlayerbh();
    hOff = 0;
    vOff = 0;
}

void drawbh() {
    hideSprites();
    drawPlayerbh();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

void initPlayerbh(){
    player.width = 16;
    player.height = 32;
    player.x = 110;
    player.y = 104;
    player.numFrames = 3;
    player.timeUntilNextFrame = 10;
    player.xVel = 3;
    player.yVel = 3;
    player.oamIndex = 0;
    player.active = 1;
}

void updatebh(){
    updatePlayerbh();
}

void drawPlayerbh() {
    shadowOAM[0].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_TALL | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM | (player.direction == LEFT ? ATTR1_HFLIP : 0);
    shadowOAM[0].attr2 = ATTR2_TILEID(player.direction * 2, player.currentFrame * 4);
    shadowOAM[player.oamIndex].attr0=ATTR0_Y(player.y - vOff) | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1=ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

void updatePlayerbh() {
    player.isAnimating = 0;

    // Move up
    if (BUTTON_HELD(BUTTON_UP) && player.y > 0) {
        player.y -= player.yVel;
        player.isAnimating = 1;
        player.direction = UP;
    }

    // Move down
    if (BUTTON_HELD(BUTTON_DOWN) && player.y + player.height < bhsh) { // Check against bhsh
        player.y += player.yVel;
        player.isAnimating = 1;
        player.direction = DOWN;
    }

    // Move left
    if (BUTTON_HELD(BUTTON_LEFT) && player.x > 0) {
        player.x -= player.xVel;
        player.isAnimating = 1;
        player.direction = LEFT;
    }

    // Move right
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < bhsw) { // Check against bhsw
        player.x += player.xVel;
        player.isAnimating = 1;
        player.direction = RIGHT;
    }

    // Handle animation frames
    if (player.isAnimating) {
        player.timeUntilNextFrame--;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 10;
        }
    } else {
        player.currentFrame = 0;
    }
    if (collision(player.x, player.y, player.width, player.height, 100, 10, 40, 60)) {
        intro = 2;
    }
}