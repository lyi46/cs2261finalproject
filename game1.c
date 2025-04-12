#include "gba.h"
#include "print.h"
#include "mode0.h"
#include "sprites.h"
#include "game1.h"
#include "chiriro.h"
#include "tilemap.h"

int hOff;
int vOff;

SPRITE player;
typedef enum {RIGHT, LEFT} DIRECTION;
OBJ_ATTR shadowOAM[128];
int intro;


inline unsigned char colorAt(int x, int y){
    // return ((unsigned char * ) collisionBitmap) [OFFSET(x, y, MAPWIDTH)];
}

void initGame1(){
    DMANow(3, shadowOAM, OAM, 128*4);
    
    initPlayer();
    hOff = 0;
    vOff = 0;
}

void updateGame1(){
    updatePlayer();
}

void drawGame1(){
    hideSprites();
    drawPlayer();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

// Initialize player
void initPlayer(){
    player.width = 16;
    player.height = 32;
    player.x = 45;
    player.y = 420;
    player.numFrames = 3;
    player.timeUntilNextFrame = 10;
    player.xVel = 3;
    player.yVel = 3;
    player.oamIndex = 0;
    player.active = 1;
}


// Handle every-frame actions of player
void updatePlayer() {
    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;
    player.isAnimating = 0;


    if (BUTTON_HELD(BUTTON_UP) && player.y > 0) {
        player.y -= player.yVel;
    }
    if (BUTTON_HELD(BUTTON_DOWN) && player.y + player.height < MAPHEIGHT) {
        player.y += player.yVel;
    }
    if (BUTTON_HELD(BUTTON_LEFT) && player.x > 0) {
        player.x -= player.xVel;
        player.direction = LEFT;
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < MAPWIDTH) {
        player.x += player.xVel;
        player.direction = RIGHT;
    }
    hOff = player.x - SCREENWIDTH/2;
    vOff = player.y - SCREENHEIGHT/2;

    if (vOff > MAPHEIGHT - SCREENHEIGHT) {
        vOff = MAPHEIGHT - SCREENHEIGHT;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > MAPWIDTH - SCREENWIDTH) {
        hOff = MAPWIDTH - SCREENWIDTH;
    }
    if (hOff < 0) {
        hOff = 0;
    }
    if (collision(player.x, player.y, player.width, player.height, 30, 300, 30, 30)) {
        intro = 1;
    }
}


// Draw player
void drawPlayer() {
    shadowOAM[0].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_TALL | ATTR0_4BPP;
    shadowOAM[0].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(0, 0) | ATTR2_PALROW(0); 
    shadowOAM[player.oamIndex].attr0=ATTR0_Y(player.y - vOff) | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1=ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
}