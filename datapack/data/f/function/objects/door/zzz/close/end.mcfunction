tag @s remove objects.playing
scoreboard players reset @s timer

execute if entity @s[y_rotation=-135..-45] run fill ~ ~ ~ ~ ~1 ~ iron_trapdoor[open=true,facing=west]
execute if entity @s[y_rotation=-45..45] run fill ~ ~ ~ ~ ~1 ~ iron_trapdoor[open=true,facing=north]
execute if entity @s[y_rotation=45..135] run fill ~ ~ ~ ~ ~1 ~ iron_trapdoor[open=true,facing=east]
execute if entity @s[y_rotation=135..180] run fill ~ ~ ~ ~ ~1 ~ iron_trapdoor[open=true,facing=south]
execute if entity @s[y_rotation=-180..-135] run fill ~ ~ ~ ~ ~1 ~ iron_trapdoor[open=true,facing=south]