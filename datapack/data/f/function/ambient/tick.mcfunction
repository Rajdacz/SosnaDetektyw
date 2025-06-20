execute as @e[tag=models.outdoor,sort=random] at @s if predicate f:random/0p1 run function f:ambient/models/as_outdoor
execute as @a run function f:ambient/building/is_in_building
function f:ambient/weather/sounds
function f:ambient/weather/lightning_bolt

#execute as @p at @s if predicate f:is_rain run function f:visuals/thunder
#execute as @p at @s if predicate f:is_thunder run function f:visuals/thunder