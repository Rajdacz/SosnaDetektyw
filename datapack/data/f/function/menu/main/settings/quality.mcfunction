scoreboard players add quality settings 1
scoreboard players set temp temp 3
scoreboard players operation quality settings %= temp temp

execute if score quality settings matches 0 run data modify entity @s text set value '{"text":"Quality: §2Low"}'
execute if score quality settings matches 1 run data modify entity @s text set value '{"text":"Quality: §eMedium"}'
execute if score quality settings matches 2 run data modify entity @s text set value '{"text":"Quality: §cHigh"}'