tag @e remove temp

execute as @n[tag=objects.barrier] on passengers if entity @s[tag=objects.barrier.border] run return run kill @s

execute as @n[tag=objects.barrier] on passengers if entity @s[tag=objects.barrier.hitbox] store result score temp temp run data get entity @s attributes[{id:"minecraft:scale"}].base 1000
execute store result storage f:temp temp float 0.0005 run scoreboard players get temp temp
execute store result storage f:temp temp2 float 0.001 run scoreboard players get temp temp
execute summon marker run function f:objects/barrier/zzz/border_nearest2 with storage f:temp
ride @n[tag=temp] mount @n[tag=objects.barrier]

tag @e remove temp