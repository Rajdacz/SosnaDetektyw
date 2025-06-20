execute as @e[tag=aj.door.root,distance=..2,sort=nearest,limit=1] on passengers as @s[tag=aj.data] run function f:door/zzz/kill with entity @s data.cameras.doorlock
execute as @e[tag=aj.door.root,distance=..2,sort=nearest,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ air
execute as @e[tag=aj.door.root,distance=..2,sort=nearest,limit=1] run function animated_java:door/remove/this