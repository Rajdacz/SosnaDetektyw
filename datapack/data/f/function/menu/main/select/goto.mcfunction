execute as @e[tag=menu.main.select] run data merge entity @s {start_interpolation:0}
$execute as $(entity) run data modify entity @n[tag=menu.main.select.l] transformation set from entity @s transformation
$execute as $(entity) run data modify entity @n[tag=menu.main.select.r] transformation set from entity @s transformation
execute if score menu menu matches 1 as @e[tag=menu.main.select.l] run data modify entity @s transformation.translation[0] set value 0.12f
execute if score menu menu matches 1 as @e[tag=menu.main.select.r] run data modify entity @s transformation.translation[0] set value -0.12f