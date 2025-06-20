scoreboard players operation temp temp = menu menu
scoreboard players operation temp2 temp = select menu
scoreboard players reset * menu
scoreboard players operation menu menu = temp temp
scoreboard players operation select menu = temp2 temp
scoreboard players set i menu 0
$execute as $(parent) on passengers run function f:menu/main/index2