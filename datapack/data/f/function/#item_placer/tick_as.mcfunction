execute if entity @s[tag=item_placer,tag=model] unless entity @s[nbt={Passengers:[{id:"minecraft:interaction"}]}] run kill @s
execute if entity @s[tag=interaction] if data entity @s interaction run function f:item_placer/zzz/on_clicked

execute if entity @s[tag=interaction] run function f:item_placer/zzz/update