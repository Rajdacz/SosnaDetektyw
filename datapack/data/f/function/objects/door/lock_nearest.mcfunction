execute if entity @n[tag=objects.door,tag=!objects.door.locked] run tellraw @s "Locked"
execute as @n[tag=objects.door,tag=!objects.door.locked] run return run tag @s add objects.door.locked

execute if entity @n[tag=objects.door,tag=objects.door.locked] run tellraw @s "Unlocked"
execute as @n[tag=objects.door,tag=objects.door.locked] run return run tag @s remove objects.door.locked