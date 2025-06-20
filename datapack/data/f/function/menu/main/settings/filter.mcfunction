scoreboard players add content_filter settings 1
scoreboard players set temp temp 2
scoreboard players operation content_filter settings %= temp temp

execute if score content_filter settings matches 1 run data modify entity @s text set value '{"text":"Content Filter: §2✔"}'
execute if score content_filter settings matches 0 run data modify entity @s text set value '{"text":"Content Filter: §c❌"}'