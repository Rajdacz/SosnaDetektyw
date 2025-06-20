playsound as:sfx.enterwoosh ambient @s[tag=!player.in_building,tag=!player.cutscene]
execute if entity @s[tag=!player.in_building] run schedule function f:ambient/building/stopsound 0.35s
tag @a add player.in_building