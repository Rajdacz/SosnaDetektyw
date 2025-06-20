execute as @e[tag=menu.main.center] run data merge entity @s {background:-1185984689,see_through:true,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0.12f,-1.13f,1.1f],scale:[15f,9f,1f]}}
execute as @e[tag=menu.main.center.logo] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,1.5f,1f],scale:[1f,1f,1f]}}
execute as @e[tag=menu.main.center.button.play] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,1f,1f],scale:[0.5f,0.5f,0.5f]}}

execute as @e[tag=menu.main.center.button.settings] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,0.6f,1f],scale:[0.7f,0.7f,0.7f]}}

execute as @e[tag=menu.main.select] run data merge entity @s {background:0,interpolation_duration:3}
execute as @e[tag=menu.main.info] run data merge entity @s {background:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,-0.95f,1f],scale:[0.2f,0.2f,0.2f]}}

execute as @e[tag=menu.main.settings.button.quality] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,0.4f,1f],scale:[0.3f,0.3f,0.3f]}}
execute as @e[tag=menu.main.settings.button.narrator] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,0.25f,1f],scale:[0.3f,0.3f,0.3f]}}
execute as @e[tag=menu.main.settings.button.subtitles] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,0.1f,1f],scale:[0.3f,0.3f,0.3f]}}
execute as @e[tag=menu.main.settings.button.filter] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,-0.05f,1f],scale:[0.3f,0.3f,0.3f]}}
execute as @e[tag=menu.main.settings.self] run data merge entity @s {background:0,interpolation_duration:3,start_interpolation:0,transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],translation:[0f,-0.7f,1f],scale:[0.3f,0.3f,0.3f]}}

execute as @e[tag=menu.main.settings.button.quality] if score quality settings matches 0 run data modify entity @s text set value '{"text":"Quality: §2Low"}'
execute as @e[tag=menu.main.settings.button.quality] if score quality settings matches 1 run data modify entity @s text set value '{"text":"Quality: §eMedium"}'
execute as @e[tag=menu.main.settings.button.quality] if score quality settings matches 2 run data modify entity @s text set value '{"text":"Quality: §cHigh"}'

execute as @e[tag=menu.main.settings.button.narrator] if entity @p[tag=!player.ignore_voices] run data modify entity @s text set value '{"text":"Narrator: §2✔"}'
execute as @e[tag=menu.main.settings.button.narrator] if entity @p[tag=player.ignore_voices] run data modify entity @s text set value '{"text":"Narrator: §c❌"}'

execute as @e[tag=menu.main.settings.button.subtitles] if entity @p[tag=!player.ignore_subtitles] run data modify entity @s text set value '{"text":"Subtitles: §2✔"}'
execute as @e[tag=menu.main.settings.button.subtitles] if entity @p[tag=player.ignore_subtitles] run data modify entity @s text set value '{"text":"Subtitles: §c❌"}'

execute as @e[tag=menu.main.settings.button.filter] if score content_filter settings matches 1 run data modify entity @s text set value '{"text":"Content Filter: §2✔"}'
execute as @e[tag=menu.main.settings.button.filter] if score content_filter settings matches 0 run data modify entity @s text set value '{"text":"Content Filter: §c❌"}'

scoreboard players set menu menu 1
scoreboard players set select menu 0

function f:menu/main/index {parent:"@n[tag=menu.main.settings.buttons]"}
function f:menu/main/select/select {n:0}