# Count models (debug)
scoreboard players set #models_temp game 0
execute as @e[type=item_display] run scoreboard players add #models_temp game 1
scoreboard players operation models game = #models_temp game

## TICK AS
#function f:item_placer/tick


function f:game/zzz/tick
function f:objects/zzz/tick
function f:ambient/tick
function f:menu/zzz/tick
#function f:door/tick
execute as @a[tag=player.in_game] at @s run function f:game/player/zzz/tick_as

## missions
function f:missions/tutorial/tick
function f:missions/tutorial/visuals/tick