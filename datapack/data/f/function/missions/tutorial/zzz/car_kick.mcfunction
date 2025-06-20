scoreboard players set @a item_placer 0
playsound as:sfx.engine_turn_off master @a 4 0 47 1
stopsound @a master as:sfx.engine_idle
stopsound @a master as:music.car_radio
fill 7 1 49 9 1 47 air
execute as @e[x=5,y=2,z=48,distance=..3,limit=1,tag=car_handle,tag=interaction] on vehicle run data merge entity @s {Glowing:0b}
execute as @e[x=5,y=2,z=48,distance=..3,limit=1,tag=car_key] on vehicle run data merge entity @s {Glowing:0b}

execute as @e[tag=car_key,tag=item_placer] at @s run playsound as:sfx.car_key_remove master @a
execute as @e[x=4.875,y=2.0625,z=47.9375,distance=..1,tag=item_placer, type=minecraft:interaction] run scoreboard players set @s item_placer 0

scoreboard players set .tutorial game 850