gamemode spectator
spectate @n[tag=menu.main]

execute as @s[predicate=f:input/forward,tag=!player.menu.pressed] run function f:menu/main/select/select {n:-1}
execute as @s[predicate=f:input/forward,tag=!player.menu.pressed] run tag @s add player.menu.pressed
execute as @s[predicate=f:input/backward,tag=!player.menu.pressed] run function f:menu/main/select/select {n:1}
execute as @s[predicate=f:input/backward,tag=!player.menu.pressed] run tag @s add player.menu.pressed
execute as @s[predicate=f:input/right,tag=!player.menu.pressed] run function f:menu/main/select/enter
execute as @s[predicate=f:input/right,tag=!player.menu.pressed] run tag @s add player.menu.pressed
execute as @s[predicate=f:input/left,tag=!player.menu.pressed] run function f:menu/main/select/back
execute as @s[predicate=f:input/left,tag=!player.menu.pressed] run tag @s add player.menu.pressed
execute as @s[tag=player.menu.pressed,predicate=!f:input/forward,predicate=!f:input/backward,predicate=!f:input/right,predicate=!f:input/left] run tag @s remove player.menu.pressed