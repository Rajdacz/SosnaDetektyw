schedule function f:ambient/schedule 4s

execute as @e[tag=!player.in_building] at @s run playsound as:ambient.town ambient @s ~ ~ ~ 0.1
execute if predicate f:random/0p5 as @e[tag=!player.in_building] at @s run playsound as:ambient.town.vehicles ambient @s ~ ~ ~ 0.1