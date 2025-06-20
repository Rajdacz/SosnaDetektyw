execute on target run scoreboard players operation #temp item_placer = @s item_placer
scoreboard players operation #temp2 item_placer = @s item_placer

scoreboard players operation @s item_placer = #temp item_placer
execute on target run scoreboard players operation @s item_placer = #temp2 item_placer
