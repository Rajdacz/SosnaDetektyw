gamemode spectator @p
function f:menu/main/kill_all
execute positioned -5 7 42 rotated -80 40 run function f:menu/main/summon
execute as @p run spectate @n[tag=menu.main]