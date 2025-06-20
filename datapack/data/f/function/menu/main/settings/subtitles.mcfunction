execute if entity @p[tag=player.ignore_subtitles] run data modify entity @s text set value '{"text":"Subtitles: §2✔"}'
execute if entity @p[tag=player.ignore_subtitles] run return run tag @p remove player.ignore_subtitles
execute if entity @p[tag=!player.ignore_subtitles] run data modify entity @s text set value '{"text":"Subtitles: §c❌"}'
execute if entity @p[tag=!player.ignore_subtitles] run return run tag @p add player.ignore_subtitles