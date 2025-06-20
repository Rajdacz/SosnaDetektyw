execute as @e[type=minecraft:item_display,x=13.75,y=15.125,z=37.25,sort=nearest,limit=1] run data merge entity @s {view_range:0}
execute as @e[type=minecraft:item_display,x=14.125, y=15.5625, z=36.6875,sort=nearest,limit=1] run data merge entity @s {view_range:0}
execute as @e[type=minecraft:item_display,x=13.875, y=15.5, z=36.75,sort=nearest,limit=1] run data merge entity @s {view_range:0}
execute as @e[type=minecraft:item_display,x=13.75, y=15.5625, z=36.4375,sort=nearest,limit=1] run data merge entity @s {view_range:0}
execute as @e[type=minecraft:item_display,x=12.625, y=15.5, z=37.5,sort=nearest,limit=1] run data merge entity @s {view_range:0}

execute as @e[type=minecraft:item_display,x=13.5,y=16.5,z=38.4375,sort=nearest,limit=1] at @s run tp @s ~ ~ 38.4375 0 0

execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["barrier1"]}}}}] run data merge entity @s {view_range:0}
execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["police_barrier"]}}}}] run data merge entity @s {view_range:0}
execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["car"]}}}}] run data merge entity @s {view_range:0}
execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["police1"]}}}}] run data merge entity @s {view_range:0}

execute as @e[x=4.875,y=2.0625,z=47.9375,distance=..1,tag=item_placer, type=minecraft:interaction] run scoreboard players set @s item_placer 0

title @a[tag=player.in_game] times 0 40 20
title @a[tag=player.in_game] title {"translate":"\ue001","color":"black"}
function animated_java:global/remove/everything
kill @e[tag=aj.camera]

execute positioned 11 15 34 rotated -90 0 run function animated_java:door/summon {args:{}}
execute positioned 7 2 41 rotated 90 0 run function animated_java:door/summon {args:{}}
execute positioned 9 15 39 rotated 0 0 run function animated_java:door/summon {args:{}}
execute positioned 13 18 38 rotated 0 0 run function animated_java:prop/summon {args:{}}
execute positioned 13 15 31 rotated 180 0 run function animated_java:humanentity/summon/a_victim1 {args:{}}
execute positioned 7 2 41 rotated 180 0 run function animated_java:humanentity/summon/murder2 {args:{}}
execute positioned 13 15 30 rotated 0 0 run function animated_java:prop/summon {args:{}}

execute positioned 7 2 41 as @e[tag=aj.door.root,limit=1,distance=..1] run function animated_java:door/animations/close/play
execute positioned 11 15 34 as @e[tag=aj.door.root,limit=1,distance=..1] run function animated_java:door/animations/a_000/play
execute positioned 13 15 30 as @e[tag=aj.prop.root,distance=..1] run function animated_java:prop/animations/bodyblood1/set_frame {frame:0}
execute positioned 13 18 38 as @e[tag=aj.prop.root,distance=..1] run function animated_java:prop/animations/plant_fall1/set_frame {frame:0}


tag @a[tag=player.in_game] add player.cutscene