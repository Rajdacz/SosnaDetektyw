execute if entity @s[tag=objects.door.closed] run return 1

tag @s remove objects.door.opened
tag @s add objects.door.closed
tag @s add objects.playing
scoreboard players set @s timer 1
return 1