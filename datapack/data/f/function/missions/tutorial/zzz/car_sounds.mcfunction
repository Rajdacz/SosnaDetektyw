scoreboard players add #car_sounds game 1

execute if score #car_sounds game matches 1 as @e[tag=car_seat] at @s run playsound as:sfx.engine_idle master @a[distance=..3]
execute if score #car_sounds game matches 24 as @e[tag=car_seat] at @s run playsound as:sfx.seat_belt_warning master @a[distance=..3] 4.93 2.00 47.69 0.2
execute if score #car_sounds game matches 48 as @e[tag=car_seat] at @s run playsound as:sfx.seat_belt_warning master @a[distance=..3] 4.93 2.00 47.69 0.2

execute if score #car_sounds game matches 48.. run scoreboard players set #car_sounds game 0