schedule clear f:missions/tutorial/schedule
schedule clear f:missions/tutorial/zzz/car_kick_narrator
schedule clear f:missions/tutorial/zzz/car_kick
kill @e[tag=movable_barrier,type=interaction]

setblock 2 2 43 minecraft:purpur_stairs[facing=north,half=top,shape=straight,waterlogged=false]
setblock 3 1 44 air
execute positioned 3.0 1.5 43.8125 as @e[tag=movable_barrier,type=item_display] run tp @s 3.0 1.5 43.8125 90 0

execute positioned 3.0 1 43 run summon minecraft:interaction ~ ~ ~ {Tags:["movable_barrier"],width:2,response:1b}

function animated_java:door/remove/all
function animated_java:humanentity/remove/all
kill @e[tag=aj.camera]
kill @e[tag=doorlock]

execute positioned 13 15 31 rotated 180 0 run function animated_java:humanentity/summon/a_victim1 {args:{}}
execute positioned 13 15 31 as @e[tag=aj.humanentity.root,distance=..3] run function animated_java:humanentity/animations/000_vic_3/play

execute positioned 7 2 41 rotated 90 0 run function animated_java:door/summon {args:{}}
execute positioned 9 2 39 rotated 0 0 run function animated_java:door/summon {args:{}}
execute positioned 9 9 39 rotated 0 0 run function animated_java:door/summon {args:{}}
execute positioned 9 15 39 rotated 0 0 run function animated_java:door/summon {args:{}}
execute positioned 11 15 34 rotated -90 0 run function animated_java:door/summon {args:{}}
execute positioned 11 15 28 rotated -90 0 run function animated_java:door/summon {args:{}}

execute as @e[tag=aj.door.root] run function animated_java:door/animations/close/set_frame {frame:10}
execute as @e[tag=aj.door.root] run function animated_java:door/animations/close/set_frame {frame:20}

execute positioned 9 2 39 as @e[tag=aj.door.root,distance=..2] run tag @s add locked
execute positioned 9 9 39 as @e[tag=aj.door.root,distance=..2] run tag @s add locked
execute positioned 11 15 28 as @e[tag=aj.door.root,distance=..2] run tag @s add locked