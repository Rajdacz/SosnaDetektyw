execute store result storage f:temp ITP_CMD int 1 run scoreboard players get @s item_placer
execute on vehicle run function f:item_placer/zzz/updatemodel with storage f:temp