tp @s ~ ~0.5 ~
data modify entity @s Rotation[0] set value 0f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=157.5..180] run data modify entity @s Rotation[0] set value 0f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=-180..-157.5] run data modify entity @s Rotation[0] set value 0f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=-157.5..-112.5] run data modify entity @s Rotation[0] set value 45f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=-112.5..-67.5] run data modify entity @s Rotation[0] set value 90f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=-67.5..-22.5] run data modify entity @s Rotation[0] set value 135f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=-22.5..22.5] run data modify entity @s Rotation[0] set value 180f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=22.5..67.5] run data modify entity @s Rotation[0] set value 225f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=67.5..112.5] run data modify entity @s Rotation[0] set value 270f
execute if entity @p[nbt={SelectedItem:{id:"minecraft:endermite_spawn_egg",components:{"minecraft:custom_data":{models.block.item:1b}}}},y_rotation=112.5..157.5] run data modify entity @s Rotation[0] set value 315f
$summon minecraft:item_display ~ ~ ~ {Tags:["models.block","models.block.spawn2"],item:$(data)}
tp @n[tag=models.block.spawn2] @s
tag @e remove models.block.spawn2
kill @s