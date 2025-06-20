schedule clear f:game/missions/tutorial/schedule
schedule clear f:game/missions/tutorial/zzz/car_kick_narrator
schedule clear f:game/missions/tutorial/zzz/car_kick
kill @e[tag=movable_barrier,type=interaction]

setblock 2 2 43 minecraft:purpur_stairs[facing=north,half=top,shape=straight,waterlogged=false]
setblock 3 1 44 air
execute positioned 3.0 1.5 43.8125 as @e[tag=movable_barrier,type=item_display] run tp @s 3.0 1.5 43.8125 90 0

execute positioned 3.0 1 43 run summon interaction ~ ~ ~ {Tags:["movable_barrier"],width:2}

execute positioned 7 2 41 as @n[tag=objects.door] run function f:objects/door/zzz/close/run
execute positioned 9 2 39 as @n[tag=objects.door] run function f:objects/door/zzz/close/run
execute positioned 9 9 39 as @n[tag=objects.door] run function f:objects/door/zzz/close/run
execute positioned 9 15 39 as @n[tag=objects.door] run function f:objects/door/zzz/close/run
execute positioned 11 15 34 as @n[tag=objects.door] run function f:objects/door/zzz/close/run
execute positioned 11 15 28 as @n[tag=objects.door] run function f:objects/door/zzz/close/run

execute positioned 9 2 39 as @n[tag=objects.door] run tag @s add objects.door.locked
execute positioned 9 9 39 as @n[tag=objects.door] run tag @s add objects.door.locked
execute positioned 11 15 28 as @n[tag=objects.door] run tag @s add objects.door.locked