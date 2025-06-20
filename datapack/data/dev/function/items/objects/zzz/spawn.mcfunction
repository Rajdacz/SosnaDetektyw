tp @s ~ ~0.5 ~
data modify entity @s Rotation[0] set value 0f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{objects.item:1b}}}},y_rotation=135..180] run data modify entity @s Rotation[0] set value 0f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{objects.item:1b}}}},y_rotation=-180..-135] run data modify entity @s Rotation[0] set value 0f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{objects.item:1b}}}},y_rotation=-135..-45] run data modify entity @s Rotation[0] set value 90f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{objects.item:1b}}}},y_rotation=-45..45] run data modify entity @s Rotation[0] set value 180f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{objects.item:1b}}}},y_rotation=45..135] run data modify entity @s Rotation[0] set value 270f
$execute at @s run function f:objects/$(object)/summon $(props)
kill @s