function f:missions/tutorial/reset

scoreboard players set .tutorial game 0
function f:missions/tutorial/schedule
stopsound @a
gamemode adventure @a[tag=player.in_game]

execute positioned 7 2 41 as @e[tag=aj.door.root,distance=..3,limit=1] run function animated_java:door/animations/a_001/set_frame {frame:0}