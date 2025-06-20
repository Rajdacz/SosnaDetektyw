$scoreboard players set temp temp $(n)
scoreboard players operation select menu += temp temp
scoreboard players operation select menu %= i menu
function f:menu/main/select/goto {entity:"@e if score @s menu = select menu"}