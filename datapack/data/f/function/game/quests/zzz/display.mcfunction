scoreboard players add #quest game 1

$execute if score #quest game matches 10 run title @a actionbar [{"translate":"$(lang).quest.000"}]
$execute if score #quest game matches 12 run title @a actionbar [{"translate":"$(lang).quest.000"},{"translate":"$(lang).quest.001"}]
$execute if score #quest game matches 14 run title @a actionbar [{"translate":"$(lang).quest.000"},{"translate":"$(lang).quest.001"},{"translate":"$(lang).quest.002"}]
$execute if score #quest game matches 16 run title @a actionbar [{"translate":"$(lang).quest.000"},{"translate":"$(lang).quest.001"},{"translate":"$(lang).quest.002"},{"translate":"$(lang).quest.003"}]
$execute if score #quest game matches 18 run title @a actionbar [{"translate":"$(lang).quest.000"},{"translate":"$(lang).quest.001"},{"translate":"$(lang).quest.002"},{"translate":"$(lang).quest.003"},{"translate":"$(lang).quest.004"}]
$execute if score #quest game matches 20 run title @a actionbar [{"translate":"$(lang).quest.000"},{"translate":"$(lang).quest.001"},{"translate":"$(lang).quest.002"},{"translate":"$(lang).quest.003"},{"translate":"$(lang).quest.004"},{"translate":"$(lang).quest.005"}]
$execute if score #quest game matches 22 run title @a actionbar [{"translate":"$(lang).quest.000"},{"translate":"$(lang).quest.001"},{"translate":"$(lang).quest.002"},{"translate":"$(lang).quest.003"},{"translate":"$(lang).quest.004"},{"translate":"$(lang).quest.005"},{"translate":"$(lang).quest.006"}]

execute if score #quest game matches 10 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5
execute if score #quest game matches 12 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5
execute if score #quest game matches 14 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5
execute if score #quest game matches 16 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5
execute if score #quest game matches 18 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5
execute if score #quest game matches 20 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5
execute if score #quest game matches 22 as @a at @s run playsound as:sfx.quest_ping master @s ~ ~ ~ 0.5

execute if score #quest game matches 30 as @a at @s run playsound as:sfx.quest_warning master @s ~ ~ ~ 0.5
execute if score #quest game matches 40 as @a at @s run playsound as:sfx.quest_warning master @s ~ ~ ~ 0.5
execute if score #quest game matches 50 as @a at @s run playsound as:sfx.quest_warning master @s ~ ~ ~ 0.5

execute if score #quest game matches 60 as @a at @s run playsound as:sfx.quest_info master @s ~ ~ ~ 0.5

execute if score #quest game matches 25 run title @a actionbar [""]
$execute if score #quest game matches 30 run title @a actionbar [{"translate":"$(lang).quest.007"}]
execute if score #quest game matches 35 run title @a actionbar [""]
$execute if score #quest game matches 40 run title @a actionbar [{"translate":"$(lang).quest.007"}]
execute if score #quest game matches 45 run title @a actionbar [""]
$execute if score #quest game matches 50 run title @a actionbar [{"translate":"$(lang).quest.007"}]
execute if score #quest game matches 55 run title @a actionbar [""]

$execute if score #quest game matches 60..100 run title @a actionbar {"translate":"$(lang).quest.$(quest)"}

execute if score #quest game matches 100.. run scoreboard players reset #quest game