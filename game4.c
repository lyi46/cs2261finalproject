#include "gba.h"
#include "print.h"
#include "mode0.h"
#include "sprites.h"
#include "game4.h"
#include "chiriro.h"
#include "train.h"
#include "enemy.h"
int hOff;
int vOff;

SPRITE player;
SPRITE noface;
typedef enum {DOWN, UP, LEFT, RIGHT} DIRECTION;
OBJ_ATTR shadowOAM[128];
int intro;
int g4sw = 512;
int g4sh = 140;

inline unsigned char colorAt(int x, int y){
    // return ((unsigned char * ) collisionBitmap) [OFFSET(x, y, MAPWIDTH)];
}

void initGame4(){
    DMANow(3, shadowOAM, OAM, 128*4);

    
    initPlayer4();
    initnoface();
    hOff = 0;
    vOff = 0;
}

void updateGame4(){
    updatePlayer4();
}

void drawGame4(){
    hideSprites();
    drawPlayer4();
    drawnoface();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

// Initialize player
void initPlayer4(){
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

void drawPlayer4() {
    shadowOAM[0].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_TALL | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[0].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM | (player.direction == LEFT ? ATTR1_HFLIP : 0);
    shadowOAM[0].attr2 = ATTR2_TILEID(player.direction * 2, player.currentFrame * 4);
    shadowOAM[player.oamIndex].attr0=ATTR0_Y(player.y - vOff) | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1=ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

void updatePlayer4() {
    player.isAnimating = 0;

    // Move up
    if (BUTTON_HELD(BUTTON_UP) && player.y > 0) {
        player.y -= player.yVel;
        player.isAnimating = 1;
        player.direction = UP;
    }

    // Move down
    if (BUTTON_HELD(BUTTON_DOWN) && player.y + player.height < g4sh) { // Check against g4sh
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
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < g4sw) { // Check against g4sw
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
    hOff = player.x - SCREENWIDTH/2;
    vOff = player.y - SCREENHEIGHT/2;

    if (vOff > g4sh - SCREENHEIGHT) {
        vOff = g4sh - SCREENHEIGHT;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > g4sw - SCREENWIDTH) {
        hOff = g4sw - SCREENWIDTH;
    }
    if (hOff < 0) {
        hOff = 0;
    }
    if (collision(player.x, player.y, player.width, player.height, 105, 500, 30, 30)) {
        intro = 3;
    }
}

void drawnoface() {
    // DMANow(3, enemyTiles, &CHARBLOCK[6], enemyTilesLen/2);
    // DMANow(3, enemyPal, SPRITE_PAL, 256);
    // hideSprites();
    // DMANow(3, shadowOAM, OAM, 512);
    shadowOAM[5].attr0 = ATTR0_Y(noface.y - vOff) | ATTR0_TALL | ATTR0_4BPP | ATTR0_REGULAR;
    shadowOAM[5].attr1 = ATTR1_X(noface.x - hOff) | ATTR1_LARGE | (noface.direction == LEFT ? ATTR1_HFLIP : 0);
    shadowOAM[5].attr2 = ATTR2_TILEID(0, 8);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}

void initnoface() {
    noface.width = 32;
    noface.height = 32;
    noface.x = 104;
    noface.y = 0;
    noface.numFrames = 3;
    noface.timeUntilNextFrame = 10;
    noface.xVel = 3;
    noface.yVel = 3;
    noface.oamIndex = 5;
    noface.active = 1;
}
