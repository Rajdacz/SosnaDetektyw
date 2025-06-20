execute if entity @p[tag=player.ignore_voices] run data modify entity @s text set value '{"text":"Narrator: §2✔"}'
execute if entity @p[tag=player.ignore_voices] run return run tag @p remove player.ignore_voices
execute if entity @p[tag=!player.ignore_voices] run data modify entity @s text set value '{"text":"Narrator: §c❌"}'
execute if entity @p[tag=!player.ignore_voices] run return run tag @p add player.ignore_voices