scoreboard players add #weather_sounds game 1

execute as @a[tag=!player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_thunder run playsound as:ambient.wind_storm weather @a ~ ~ ~ 0.05
execute as @a[tag=!player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_rain run playsound as:ambient.wind_storm weather @a ~ ~ ~ 0.01
execute as @a[tag=!player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_thunder run playsound as:ambient.wind_storm weather @a ~ ~ ~ 0.05
execute as @a[tag=!player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_rain run playsound as:ambient.wind_storm weather @a ~ ~ ~ 0.01

execute as @a[tag=player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_thunder run playsound as:ambient.in_wind_storm weather @s ~ ~ ~ 0.1
execute as @a[tag=player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_rain run playsound as:ambient.in_wind_storm weather @s ~ ~ ~ 0.02
execute as @a[tag=player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_thunder run playsound as:ambient.in_wind_storm weather @s ~ ~ ~ 0.1
execute as @a[tag=player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_rain run playsound as:ambient.in_wind_storm weather @s ~ ~ ~ 0.02

execute as @a[tag=!player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_rain run playsound as:ambient.rain weather @a ~ ~ ~ 0.6
execute as @a[tag=!player.in_building] at @s if score #weather_sounds game matches 1 if predicate f:is_thunder run playsound as:ambient.rain weather @a ~ ~ ~ 2

execute if score #weather_sounds game matches 5.. run scoreboard players set #weather_sounds game 0