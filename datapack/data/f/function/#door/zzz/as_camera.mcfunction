$execute as $(uuid) run data merge entity @s {item:{id:"minecraft:endermite_spawn_egg", components:{"minecraft:custom_model_data":{strings:["cube"]}}}}

$execute as $(uuid) if entity @p[distance=..1.5,tag=!player.cutscene] run data merge entity @s {Glowing:1b, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.1875f, 1.25f, 1.75f], translation: [0.0f, 0.0f, 0.0f]}}
$execute as $(uuid) unless entity @p[distance=..1.5,tag=!player.cutscene] run data merge entity @s {Glowing:0b}

$execute as $(uuid) at @s unless entity @e[tag=$(uuid)] run summon interaction ~ ~ ~ {Tags:["$(uuid)", "doorlock"], height:0.15,width:0.3, response:1b}
$execute as $(uuid) at @s run function f:door/zzz/move_to_lock {uuid:$(uuid)}

$execute if data entity @e[tag=$(uuid),limit=1] {interaction:{}} on vehicle run function f:door/zzz/if_clicked
$execute if data entity @e[tag=$(uuid),limit=1] {interaction:{}} run data remove entity @e[tag=$(uuid),limit=1] interaction