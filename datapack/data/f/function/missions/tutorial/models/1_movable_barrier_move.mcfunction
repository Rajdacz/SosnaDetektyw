execute positioned 3.0 1.5 43.8125 as @e[tag=movable_barrier,type=item_display] run tp @s 3.5 1.5 43.9125 140 0
execute as @e[tag=movable_barrier,type=item_display] at @s run playsound as:sfx.prop.barrier_scrape block @a ~ ~ ~ 0.3
data merge entity @s {Glowing:0b}
setblock 2 2 43 air
setblock 3 1 44 minecraft:barrier[waterlogged=false]