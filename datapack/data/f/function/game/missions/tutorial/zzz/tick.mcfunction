execute if entity @a[x=8,y=2,z=40,dx=7,dy=3,dz=2] run scoreboard players set @e[tag=000_0] timeLight 60
execute if entity @a[x=8,y=6,z=40,dx=7,dy=3,dz=2] run scoreboard players set @e[tag=000_1] timeLight 60
execute if entity @a[x=8,y=12,z=40,dx=7,dy=3,dz=2] run scoreboard players set @e[tag=000_2] timeLight 60

execute as @e[tag=lamp,nbt={item:{components:{"minecraft:custom_model_data":{strings:["lamp1_disabled"]}}}}] at @s run function f:game/missions/tutorial/zzz/as_lamp
execute as @e[tag=lamp,nbt={item:{components:{"minecraft:custom_model_data":{strings:["lamp1_enabled"]}}}}] at @s run function f:game/missions/tutorial/zzz/as_lamp

