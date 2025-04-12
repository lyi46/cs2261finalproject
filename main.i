# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);







extern volatile unsigned short *videoBuffer;
# 45 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 79 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 113 "gba.h"
void DMANow(int channel, volatile void *src, volatile void *dest, unsigned int ctrl);
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
# 1 "mode4.h" 1
# 9 "mode4.h"
void flipPages();
void setPixel4(int x, int y, unsigned char colorIndex);
void drawRect4(int x, int y, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int x, int y, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
# 4 "main.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];

struct attr0 {
  u16 regular;
  u16 affine;
  u16 hide;
  u16 double_affine;
  u16 enable_alpha;
  u16 enable_window;
  u16 enable_mosaic;
  u16 fourBpp;
  u16 eightBpp;
  u16 square;
  u16 wide;
  u16 tall;
};

struct attr1 {
  u16 hflip;
  u16 vflip;
  u16 tiny;
  u16 small;
  u16 medium;
  u16 large;
};

struct oam_attrs {
  struct attr0 attr0;
  struct attr1 attr1;
};
# 93 "sprites.h"
void hideSprites();


typedef struct {
  int x;
  int y;
  int xVel;
  int yVel;
  int width;
  int height;
  int timeUntilNextFrame;
  int direction;
  int isAnimating;
  int currentFrame;
  int numFrames;
  u8 oamIndex;
  int active;
} SPRITE;
# 5 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 6 "main.c" 2
# 1 "game1.h" 1
# 9 "game1.h"
void initGame1();
void initPlayer();
void initEel();


void updateGame1();
void updatePlayer();

void drawGame1();
void drawPlayer();
# 7 "main.c" 2
# 1 "game2.h" 1
# 9 "game2.h"
void initGame2();
void initPlayer2();


void updateGame2();
void updatePlayer2();

void drawGame2();
void drawPlayer2();
# 8 "main.c" 2
# 1 "chiriro.h" 1
# 21 "chiriro.h"
extern const unsigned short chiriroTiles[16384];


extern const unsigned short chiriroPal[256];
# 9 "main.c" 2
# 1 "tilemap.h" 1







extern const unsigned short tilemapMap[4096];
# 10 "main.c" 2
# 1 "tileset.h" 1
# 21 "tileset.h"
extern const unsigned short tilesetTiles[11264];


extern const unsigned short tilesetPal[256];
# 11 "main.c" 2
# 1 "start.h" 1
# 21 "start.h"
extern const unsigned short startBitmap[19200];


extern const unsigned short startPal[256];
# 12 "main.c" 2
# 1 "pause.h" 1
# 21 "pause.h"
extern const unsigned short pauseBitmap[19200];


extern const unsigned short pausePal[256];
# 13 "main.c" 2
# 1 "bh1.h" 1
# 21 "bh1.h"
extern const unsigned short bh1Tiles[19200];


extern const unsigned short bh1Pal[256];
# 14 "main.c" 2
# 1 "bhtm.h" 1







extern const unsigned short bhtmMap[1024];
# 15 "main.c" 2
# 1 "maze.h" 1







extern const unsigned short mazeMap[4096];
# 16 "main.c" 2
# 1 "bathhouse.h" 1







extern const unsigned short bathhouseMap[2048];
# 17 "main.c" 2
# 1 "train.h" 1







extern const unsigned short trainMap[2048];
# 18 "main.c" 2


unsigned short colors[8] = {(((31) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10), (((20) & 31) | ((13) & 31) << 5 | ((10) & 31) << 10), (((0) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10), (((28) & 31) | ((22) & 31) << 5 | ((18) & 31) << 10), (((15) & 31) | ((15) & 31) << 5 | ((31) & 31) << 10), (((31) & 31) | ((0) & 31) << 5 | ((31) & 31) << 10), (((31) & 31) | ((31) & 31) << 5 | ((31) & 31) << 10), (((0) & 31) | ((0) & 31) << 5 | ((0) & 31) << 10)};

enum {START, GAME1, BH, GAME2, GAME3, GAME4, INST, PAUSE};
int state; int prevstate;
int intro = 0;
void initialize(); void update(); void draw();
void startframe(); void start(); void game1(); void game1frame();
int hOff; int vOff; int rSeed;
OBJ_ATTR shadowOAM[128];
unsigned short buttons;
unsigned short oldButtons;

int main() {
    initialize4();
    state = START;

    while (1) {
        mgba_printf("State: %d\n", state);
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
        switch (state) {
            case START:
                startframe();
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    initialize4();
                    inst();
                    state = INST;
                }
                break;
            case INST:
                instframe();
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {

                    game1frame();
                    state = GAME1;
                }
                break;
            case GAME1:
                game1();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                    initialize4();
                    state = START;
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    prevstate = GAME1;
                    initialize4();
                    pauseframe();
                    state = PAUSE;
                }
                break;
            case BH:
                bh();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                    initialize4();
                    state = START;
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    prevstate = BH;
                    initialize4();
                    pauseframe();
                    state = PAUSE;
                }
                break;
            case GAME2:
                game2();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                    initialize4();
                    state = START;
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    prevstate = GAME2;
                    initialize4();
                    pauseframe();
                    state = PAUSE;
                }
            case GAME3:
                game3();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                    initialize4();
                    state = START;
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    prevstate = GAME3;
                    initialize4();
                    pauseframe();
                    state = PAUSE;
                }
            case GAME4:
                game4();
                if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                    initialize4();
                    state = START;
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    prevstate = GAME4;
                    initialize4();
                    pauseframe();
                    state = PAUSE;
                }
            case PAUSE:
                pause();
                if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
                    initialize0();
                    state = prevstate;
                }
                break;
        }
    }

    return 0;
}

void initialize4() {
    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((4) & 7) | (1 << (8 + (2 % 4))) | (1 << 4);
    buttons = (*(volatile unsigned short *)0x04000130);
    oldButtons = 0;
    startframe();
    initSound();
}

void initialize0() {
    mgba_open();
    (*(volatile unsigned short *)0x4000000)= ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);


    buttons = (*(volatile unsigned short *)0x04000130);
    oldButtons = 0;
}

void start() {
    rSeed++;
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        instframe();
    }
}

void startframe() {
    DMANow(3, startPal, ((unsigned short *)0x5000000), 256);
    drawFullscreenImage4(startBitmap);
    waitForVBlank();
    flipPages();
    state = START;
    rSeed = 0;
}

void inst() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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

    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((27) << 8) | (3 << 14) | (1 << 7);
    DMANow(3, tilesetTiles, &((CB*) 0x6000000)[0], 22528/2);
    DMANow(3, tilemapMap, &((SB*) 0x6000000)[27], (8192)/2);
    DMANow(3, tilesetPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, chiriroTiles, &((CB*) 0x6000000)[4], 32768/2);
    DMANow(3, chiriroPal, ((u16 *)0x5000200), 256);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    hOff = 0;
    vOff = 0;
    initGame1();
    state = GAME1;
}

void game1() {
    updateGame1();
    waitForVBlank();
    drawGame1();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        pauseframe();
        return;
    }
    if (intro == 1) {
        bhframe();
        return;
    }
    if (intro == 5) {
        game4frame();
        return;
    }
}

void bhframe() {
    initialize0();

    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((27) << 8) | (3 << 14) | (1 << 7);
    DMANow(3, bh1Tiles, &((CB*) 0x6000000)[0], 38400/2);
    DMANow(3, bhtmMap, &((SB*) 0x6000000)[27], (2048)/2);
    DMANow(3, bh1Pal, ((unsigned short *)0x5000000), 256);


    DMANow(3, chiriroTiles, &((CB*) 0x6000000)[4], 32768/2);
    DMANow(3, chiriroPal, ((u16 *)0x5000200), 256);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    hOff = 0;
    vOff = 0;
    initbh();
    state = BH;
}

void bh() {
    updatebh();
    waitForVBlank();
    drawbh();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        pauseframe();
        return;
    }
    if (intro == 2) {
        game2frame();
        return;
    }
}

void game2frame() {
    initialize0();

    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((20) << 8) | (2 << 14) | (1 << 7);
    DMANow(3, tilesetTiles, &((CB*) 0x6000000)[0], 22528/2);
    DMANow(3, bathhouseMap, &((SB*) 0x6000000)[20], (4096)/2);
    DMANow(3, tilesetPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, chiriroTiles, &((CB*) 0x6000000)[4], 32768/2);
    DMANow(3, chiriroPal, ((u16 *)0x5000200), 256);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    hOff = 0;
    vOff = 0;
    initGame2();
    state = GAME2;
}

void game2() {
    updateGame2();
    waitForVBlank();
    drawGame2();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        pauseframe();
        return;
    }
    if (intro == 3) {
        game3frame();
        return;
    }
}

void game3frame() {
    initialize0();

    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((22) << 8) | (3 << 14) | (1 << 7);
    DMANow(3, tilesetTiles, &((CB*) 0x6000000)[0], 22528/2);
    DMANow(3, mazeMap, &((SB*) 0x6000000)[22], (8192)/2);
    DMANow(3, tilesetPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, chiriroTiles, &((CB*) 0x6000000)[4], 32768/2);
    DMANow(3, chiriroPal, ((u16 *)0x5000200), 256);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    hOff = 0;
    vOff = 0;
    initGame3();
    state = GAME3;
}

void game3() {
    updateGame3();
    waitForVBlank();
    drawGame3();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        pauseframe();
        return;
    }
    if (intro == 4) {
        game1frame();
        return;
    }
}

void game4frame() {
    initialize0();

    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((30) << 8) | (3 << 14) | (1 << 7);
    DMANow(3, tilesetTiles, &((CB*) 0x6000000)[0], 22528/2);
    DMANow(3, trainMap, &((SB*) 0x6000000)[30], (4096)/2);
    DMANow(3, tilesetPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, chiriroTiles, &((CB*) 0x6000000)[4], 32768/2);
    DMANow(3, chiriroPal, ((u16 *)0x5000200), 256);


    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    hOff = 0;
    vOff = 0;
    initGame4();
    state = GAME4;
}

void game4() {
    updateGame4();
    waitForVBlank();
    drawGame4();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
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
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        game1frame();
        initGame1();
    } else if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
        startframe();
    }
}
