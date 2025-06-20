#function f:missions/tutorial/reset

scoreboard players set .tutorial game 0
function f:game/missions/tutorial/schedule
stopsound @a
gamemode adventure @a[tag=player.in_game]