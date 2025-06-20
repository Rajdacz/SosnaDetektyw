execute as @e[tag=victim] run data merge entity @s {CustomName:'{"translate":"","color":"yellow","bold":true}',CustomNameVisible:0b}
execute as @e[tag=important] run data merge entity @s {CustomName:'{"translate":"","color":"yellow","bold":true}',CustomNameVisible:0b}

tag @a add disabled_questions

kill @e[tag=quest]