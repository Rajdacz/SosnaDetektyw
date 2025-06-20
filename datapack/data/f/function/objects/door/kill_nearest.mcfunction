execute as @n[tag=objects.door] on passengers run kill @s
execute as @n[tag=objects.door] at @s run fill ~ ~ ~ ~ ~1 ~ air
kill @n[tag=objects.door]
kill @n[tag=objects.door.interaction]