# Spirited Away (Spirit Wanderer)

Welcome to **Spirit Wanderer**! In this game, you play as Chihiro, navigating through a mysterious bathhouse to rescue her parents who have been turned into pigs. Along the way, you must avoid dangerous spirits and collect items to progress. The goal is to outsmart the spirits, complete tasks, and ultimately save your parents.

## Controls
- **Button Left**: Move Chihiro to the left
- **Button Right**: Move Chihiro to the right
- **Button Down**: Move Chihiro down
- **Button Up**: Move Chihiro up
- **Start Button**: Pause/Resume the game
- **Select Button**: Restart the game

## State Machine Navigation
The game has 5 states that you can go through:

1. **Start State**: The initial screen where you can start the game.
   - **Start Button** press to begin the game.
2. **Instructions Page**: (instructions page implemented, but instructions not written out yet)
2. **Map State**: The main game where you control Chihiro and navigate the map.
   - **D-Pad** use left, right, up and down to move.
   - **Start Button** press to pause the game.
4. **Game 1 State**: The first game where you are being chased by the baby and have to avoid obstacles to win
   - **D-Pad** use left, right, up and down to move.
   - **Start Button** press to pause the game.
5. **Game 2 State**: The second game where you must complete a maze with a one minute timer
   - **D-Pad** use left, right, up and down to move.
   - **Start Button** press to pause the game.
6. **Game 3 State**: The third game, final round, where you defeat no face and complete the game
   - **D-Pad** use left, right, up and down to move.
   - **Start Button** press to pause the game.
7. **Pause State**: The game is paused and you can resume or restart.
   - **Start Button** press start to resume the game.
   - **Select Button** press select to restart the game.
8. **Win State**: You win the game by defeating everyone.
   - **Start Button** press to return to the start screen.
9. **Lose State**: You lose the game if your life goes to 0.
   - **Start Button** press to return to the start screen.

## How to Win and Lose
- **Win**: Survive 3 levels of games
- **Lose**: If your hearts go below 0, you lose the game (you are initally given 3 hearts).


## Game Logic
1.	(MAP) Starting point
2.	Bathhouse guide
3.	(GAME1/BATHHOUSE): avoid/dashing from a monster and collect as many coins/lost items as you can
      - if you win, you gain food and money from him
4.	(GAME2) Go through the forest and escape the maze. You need food to feed animals/spirits so they guide you to the end monster
5.	(GAME3) Complete the maze and encounter the final boss, and you need powerups from game 2 and 3 to win

## Current errors
1. with game 1, the map glitches when moving left
2. also with game 1, the baby sprite is flickering

## What still needs to be added
1. timer and collision map for maze
2. sprite for enemy no face
3. long song sound implementation
