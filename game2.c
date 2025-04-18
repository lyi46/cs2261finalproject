#include "gba.h"
#include "print.h"
#include "mode0.h"
#include "sprites.h"
#include "game2.h"
#include "chiriro.h"
#include "bathhouse.h"

int hOff;
int vOff;

SPRITE player;
SPRITE baby;
typedef enum {DOWN, UP, LEFT, RIGHT} DIRECTION;
OBJ_ATTR shadowOAM[128];
int intro;
int g2sw = 240;
int g2sh = 512;

inline unsigned char colorAt(int x, int y){
    // return ((unsigned char * ) collisionBitmap) [OFFSET(x, y, MAPWIDTH)];
}

void initGame2(){
    DMANow(3, shadowOAM, OAM, 128*4);

    
    initPlayer2();
    initBaby();
    hOff = 0;
    vOff = 0;
}

void updateGame2(){
    updatePlayer2();
}

void drawGame2(){
    hideSprites();
    drawPlayer2();
    drawBaby();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

// Initialize player
void initPlayer2(){
    player.width = 16;
    player.height = 32;
    player.x = 112;
    player.y = 70;
    player.numFrames = 3;
    player.timeUntilNextFrame = 10;
    player.xVel = 3;
    player.yVel = 3;
    player.oamIndex = 0;
    player.active = 1;
}

void drawPlayer2() {
    shadowOAM[0].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_TALL | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM | (player.direction == LEFT ? ATTR1_HFLIP : 0);
    shadowOAM[0].attr2 = ATTR2_TILEID(player.direction * 2, player.currentFrame * 4);
    shadowOAM[player.oamIndex].attr0=ATTR0_Y(player.y - vOff) | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1=ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;

    REG_BG0HOFF = 0;
    REG_BG0VOFF = vOff;
}

void updatePlayer2() {
    player.isAnimating = 0;

    // Move up
    if (BUTTON_HELD(BUTTON_UP) && player.y > 0) {
        player.y -= player.yVel;
        player.isAnimating = 1;
        player.direction = UP;
    }

    // Move down
    if (BUTTON_HELD(BUTTON_DOWN) && player.y + player.height < g2sh) { // Check against g2sh
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
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < g2sw) { // Check against g2sw
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
    vOff = player.y - SCREENHEIGHT/2;

    if (vOff > g2sh - SCREENHEIGHT) {
        vOff = g2sh - SCREENHEIGHT;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (player.x >= g2sw - player.width) {
        player.x = g2sw - player.width;
    }
    if (collision(player.x, player.y, player.width, player.height, 105, 500, 30, 30)) {
        intro = 3;
    }
}

void drawBaby() {
    shadowOAM[5].attr0 = ATTR0_Y(baby.y - vOff) | ATTR0_TALL | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[5].attr1 = ATTR1_X(baby.x - hOff) | ATTR1_LARGE | (baby.direction == LEFT ? ATTR1_HFLIP : 0);
    shadowOAM[5].attr2 = ATTR2_TILEID(0, 16);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = vOff;
}

void initBaby() {
    baby.width = 32;
    baby.height = 32;
    baby.x = 104;
    baby.y = 0;
    baby.numFrames = 3;
    baby.timeUntilNextFrame = 10;
    baby.xVel = 3;
    baby.yVel = 3;
    baby.oamIndex = 5;
    baby.active = 1;
}
