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
typedef enum {DOWN, UP, LEFT, RIGHT} DIRECTION;
OBJ_ATTR shadowOAM[128];
int intro;
int g3sw = 512;
int g3sh = 512;

inline unsigned char colorAt(int x, int y){
    // return ((unsigned char * ) collisionBitmap) [OFFSET(x, y, MAPWIDTH)];
}

void initGame3(){
    DMANow(3, shadowOAM, OAM, 128*4);

    
    initPlayer3();
    hOff = 0;
    vOff = 0;
}

void updateGame3(){
    updatePlayer3();
}

void drawGame3(){
    hideSprites();
    drawPlayer();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
}

// Initialize player
void initPlayer3(){
    player.width = 16;
    player.height = 32;
    player.x = 498;
    player.y = 480;
    player.numFrames = 3;
    player.timeUntilNextFrame = 10;
    player.xVel = 3;
    player.yVel = 3;
    player.oamIndex = 0;
    player.active = 1;
}


void updatePlayer3() {
    player.isAnimating = 0;

    // Move up
    if (BUTTON_HELD(BUTTON_UP) && player.y > 0) {
        player.y -= player.yVel;
        player.isAnimating = 1;
        player.direction = UP;
    }

    // Move down
    if (BUTTON_HELD(BUTTON_DOWN) && player.y + player.height < g3sh) { 
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
    if (BUTTON_HELD(BUTTON_RIGHT) && player.x + player.width < g3sw) { 
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

    if (vOff > g3sh - SCREENHEIGHT) {
        vOff = g3sh - SCREENHEIGHT;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > g3sw - SCREENWIDTH) {
        hOff = g3sw - SCREENWIDTH;
    }
    if (hOff < 0) {
        hOff = 0;
    }
}