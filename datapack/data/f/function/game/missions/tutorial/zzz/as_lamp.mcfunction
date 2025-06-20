scoreboard players add @s timer 1
execute if score @s timer matches 15.. if data entity @s {item:{components:{"minecraft:custom_model_data":{strings:["lamp1_enabled"]}}}} run playsound as:ambient.lampbuzz ambient @a ~ ~ ~ 0.02
execute if score @s timer matches 15.. run scoreboard players set @s timer 0

execute if score @s timeLight matches 1.. run scoreboard players remove @s timeLight 1

execute if score @s timeLight matches 1.. run setblock ~ ~ ~ light
execute if score @s timeLight matches 1.. run data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["lamp1_enabled"]}}}}
execute if score @s timeLight matches 1.. if entity @s[nbt={item:{components:{"minecraft:custom_model_data":{strings:["lamp1_disabled"]}}}}] run playsound as:sfx.lampon ambient @a ~ ~ ~ 0.3
execute if score @s timeLight matches 0 run setblock ~ ~ ~ air
execute if score @s timeLight matches 0 run data merge entity @s {item:{components:{"minecraft:custom_model_data":{strings:["lamp1_disabled"]}}}}