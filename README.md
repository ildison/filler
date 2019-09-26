# Filler

Filler is a game, where two players / algorithm are fighting on a map.

A virtual machine organizes the game :

* calls the players alternatively
* give each a random piece

On each turn, the current player have to put his piece on the map, and try to bother the ennemy. To put a piece, the player have to write its coordinates in the "Y X\n" format on the standard input (stdin).

The game appears on the standard input.

The aim of the game is to put more pieces on the map than the ennemy.

## Vizualization

<img src="https://github.com/ildison/filler/blob/master/src/visualizer/gif/filler_visualization.gif" width="947" height="533" />

## Instal & Usage
### Instal
`git clone https://github.com/ildison/filler.git filler_visualizer`  
`cd filler_visualizer`
### Usage
Standard mode :

`./filler_vm -f [map] -p1 [player1] -p2 [player2]`

Visualizer mode :

`./filler_vm -f [map] -p1 [player1] -p2 [player2] | ./visual`

Example: `./filler_vm -f maps/map02 -p1 ./cormund.filler -p2 players/superjeannot.filler | ./visual`
### Contact

My contact email: ildison@ya.ru
