execute as @e[tag=victim,tag=!did] run data merge entity @s {CustomName:'{"translate":"?","color":"yellow","bold":true}',CustomNameVisible:1b}
execute as @e[tag=important,tag=!did] run data merge entity @s {CustomName:'{"translate":"?","color":"yellow","bold":true}',CustomNameVisible:1b}
tag @a remove disabled_questions
execute unless entity @e[tag=quest,tag=body] as @e[tag=victim] at @s if entity @a[tag=!didquest.body] run summon minecraft:interaction ~ ~ ~ {width:1.5f,height:1f,Tags:["quest","body"],response:1b}
execute unless entity @e[tag=quest,tag=books] as @e[tag=50,tag=important] at @s if entity @a[tag=!didquest.books] run summon minecraft:interaction ~ ~ ~ {width:0.8f,height:0.5f,Tags:["quest","books"],response:1b}
execute unless entity @e[tag=quest,tag=laptop] as @e[tag=103,tag=important] at @s if entity @a[tag=!didquest.laptop] run summon minecraft:interaction ~ ~-0.5 ~ {width:1f,height:1f,Tags:["quest","laptop"],response:1b}