data remove entity @s interaction
data remove entity @s attack
execute if entity @p[distance=.5..] as @n[tag=objects.door] if entity @s[tag=objects.door.closed,tag=!objects.playing,tag=!objects.door.locked,tag=!disabled] at @s run return run function f:objects/door/zzz/open/run
execute if entity @p[distance=.5..] as @n[tag=objects.door] if entity @s[tag=objects.door.opened,tag=!objects.playing,tag=!objects.door.locked,tag=!disabled] at @s run return run function f:objects/door/zzz/close/run
execute if entity @p[distance=.5..] as @n[tag=objects.door] if entity @s[tag=!objects.playing,tag=objects.door.locked,tag=!disabled] at @s run return run playsound as:block.door_handle block @a