execute as @e[type=minecraft:item_display,x=13.75,y=15.125,z=37.25,sort=nearest,limit=1] run data merge entity @s {view_range:1}
execute as @e[type=minecraft:item_display,x=14.125, y=15.5625, z=36.6875,sort=nearest,limit=1] run data merge entity @s {view_range:1}
execute as @e[type=minecraft:item_display,x=13.875, y=15.5, z=36.75,sort=nearest,limit=1] run data merge entity @s {view_range:1}
execute as @e[type=minecraft:item_display,x=13.75, y=15.5625, z=36.4375,sort=nearest,limit=1] run data merge entity @s {view_range:1}
execute as @e[type=minecraft:item_display,x=12.625, y=15.5, z=37.5,sort=nearest,limit=1] run data merge entity @s {view_range:1}

execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["barrier1"]}}}}] run data merge entity @s {view_range:1}
execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["police_barrier"]}}}}] run data merge entity @s {view_range:1}
execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["car"]}}}}] run data merge entity @s {view_range:1}
execute as @e[nbt={item:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_model_data":{strings:["police1"]}}}}] run data merge entity @s {view_range:1}

execute positioned 13 18 38 as @e[tag=aj.prop.root,distance=..1] run function animated_java:prop/remove/this
execute positioned 9 15 39 as @e[tag=aj.humanentity.root,distance=..3,limit=1] run function animated_java:humanentity/remove/this

tag @a[tag=player.in_game] remove player.cutscene