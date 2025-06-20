execute as @e[tag=objects.area] run data modify entity @s data.x set string entity @s Pos[0] 0 -1
execute as @e[tag=objects.area] run data modify entity @s data.y set string entity @s Pos[1] 0 -1
execute as @e[tag=objects.area] run data modify entity @s data.z set string entity @s Pos[2] 0 -1

execute as @e[tag=objects.area] run data modify entity @s data.dx set string entity @s data.max[0] 1
execute as @e[tag=objects.area] run data modify entity @s data.dy set string entity @s data.max[1] 1
execute as @e[tag=objects.area] run data modify entity @s data.dz set string entity @s data.max[2] 1

execute as @e[tag=objects.area] run function f:objects/area/zzz/as_marker with entity @s data