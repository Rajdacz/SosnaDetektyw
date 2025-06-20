scoreboard players add #lightning game 1

execute if predicate f:is_thunder if score #lightning game matches 1 run summon minecraft:lightning_bolt 19 1 12
execute if predicate f:is_thunder if score #lightning game matches 1 as @a[tag=!player.in_building] at @s run playsound as:ambient.thunder ambient @s ~ ~ ~
execute if predicate f:is_thunder if score #lightning game matches 1 as @a[tag=player.in_building] at @s run playsound as:ambient.in_thunder ambient @s ~ ~ ~

execute if score #lightning game matches 200.. run scoreboard players set #lightning game 0