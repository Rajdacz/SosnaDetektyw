execute at @s run playsound as:sfx.shift_info master @s
tag @s add player.info_show

schedule function f:game/actions/shift/reset 3s