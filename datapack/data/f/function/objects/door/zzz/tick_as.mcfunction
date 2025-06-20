execute if entity @s[tag=objects.door.opened] if score @s timer matches 1 run playsound as:block.door_open block @a ~ ~ ~ 0.4
execute if entity @s[tag=objects.door.opened] if score @s timer matches 5 run function f:objects/door/zzz/open/run_door
execute if entity @s[tag=objects.door.opened] if score @s timer matches 15.. run function f:objects/door/zzz/open/end

execute if entity @s[tag=objects.door.closed] if score @s timer matches 2 run playsound as:block.door_close block @a ~ ~ ~ 0.4
execute if entity @s[tag=objects.door.closed] if score @s timer matches 5 run function f:objects/door/zzz/close/run_door
execute if entity @s[tag=objects.door.closed] if score @s timer matches 15.. run function f:objects/door/zzz/close/end