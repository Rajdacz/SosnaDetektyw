execute if entity @e[tag=movable_barrier,type=interaction] as @s[type=item_display] if entity @p[distance=..2] run data merge entity @s {Glowing:1b}
execute as @s[type=item_display] unless entity @p[distance=..2] run data merge entity @s {Glowing:0b}

execute as @s[type=interaction] if data entity @s interaction run function f:missions/tutorial/models/1_movable_barrier_move
execute as @s[type=interaction] if data entity @s interaction run kill @s