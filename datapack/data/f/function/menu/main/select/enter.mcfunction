execute if score menu menu matches 0 as @e if score @s menu = select menu if entity @s[tag=menu.main.center.button.play] run function f:menu/main/kill_all
execute if score menu menu matches 0 as @e if score @s menu = select menu if entity @s[tag=menu.main.center.button.settings] run return run function f:menu/main/settings/show

execute if score menu menu matches 1 as @e if score @s menu = select menu if entity @s[tag=menu.main.settings.button.quality] run function f:menu/main/settings/quality
execute if score menu menu matches 1 as @e if score @s menu = select menu if entity @s[tag=menu.main.settings.button.narrator] run function f:menu/main/settings/narrator
execute if score menu menu matches 1 as @e if score @s menu = select menu if entity @s[tag=menu.main.settings.button.subtitles] run function f:menu/main/settings/subtitles
execute if score menu menu matches 1 as @e if score @s menu = select menu if entity @s[tag=menu.main.settings.button.filter] run function f:menu/main/settings/filter
