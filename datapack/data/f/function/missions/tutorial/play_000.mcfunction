function f:missions/tutorial/models/0_startup
gamemode spectator @a
execute positioned 7 2 41 run spectate @e[tag=aj.camera,limit=1,distance=..3] @p[tag=player.in_game]


execute positioned 7 2 41 as @e[tag=aj.humanentity.root,distance=..3] run function animated_java:humanentity/animations/000_mur_0/play