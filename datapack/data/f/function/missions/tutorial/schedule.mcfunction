schedule function f:missions/tutorial/schedule 1t

##################################################################################################################
execute if score .tutorial game matches 0..780 run scoreboard players add .tutorial game 1
execute if score .tutorial game matches 800..820 run scoreboard players add .tutorial game 1
execute if score .tutorial game matches 850..930 run scoreboard players add .tutorial game 1
execute if score .tutorial game matches 932..1000 run scoreboard players add .tutorial game 1
execute if score .tutorial game matches 1100..1130 run scoreboard players add .tutorial game 1
##################################################################################################################
execute if score .tutorial game matches 1 run fill 7 1 49 9 1 47 light
execute if score .tutorial game matches 30 run tp @a[tag=player.in_game] 4 1 47 -80 15
execute if score .tutorial game matches 40 run playsound as:music.car_radio master @a 4.92 2.50 48.21
##################################################################################################################


## CONFIG ###################################################################################

execute if score .tutorial game matches 1 run tag @e[tag=secret_room1] add locked
execute if score .tutorial game matches 1 run scoreboard players set @a item_placer 0
execute if score .tutorial game matches 1 as @a run attribute @s minecraft:movement_speed base set 0.05
execute if score .tutorial game matches 1 as @a run attribute @s minecraft:jump_strength base set 0

execute if score .tutorial game matches 1 as @e[tag=car_key] run scoreboard players set @s item_placer 6
execute if score .tutorial game matches 1 as @e[tag=car_key] on vehicle run data merge entity @s {Glowing:0b}
execute if score .tutorial game matches 1 as @e[x=5,y=2,z=48,distance=..3,limit=1,tag=car_handle,tag=interaction] on vehicle run data merge entity @s {Glowing:0b}
execute if score .tutorial game matches 1 as @e[tag=item_placer] run tag @s add disabled

execute if score .tutorial game matches 1 run function f:missions/tutorial/zzz/disable_questions

execute if score .tutorial game matches 1 run execute positioned 3.0 1.5 43.8125 as @e[tag=movable_barrier,distance=..3] run tp @s 3.0 1.5 43.8125 90 0

## CONFIG ###################################################################################


execute if score .tutorial game matches 35..919 run ride @p[tag=player.in_game] mount @e[tag=car_seat,tag=cs1,limit=1] 

#execute if score .tutorial game matches 30 run weather thunder
execute if score .tutorial game matches 50 run time set 18000

execute if score .tutorial game matches 0..790 run function f:missions/tutorial/zzz/car_sounds

execute if score .tutorial game matches 70 run playsound as:sfx.seat_belt master @a 4.40 2.00 47.48 0.2

execute if score .tutorial game matches 250..320 run function f:missions/narratorc {t:000,d:000}
execute if score .tutorial game matches 330..400 run function f:missions/narrator {t:000,d:001}
execute if score .tutorial game matches 400..460 run function f:missions/narrator {t:000,d:002}
execute if score .tutorial game matches 460..510 run function f:missions/narratorc {t:000,d:003}
execute if score .tutorial game matches 510..570 run function f:missions/narrator {t:000,d:004}

execute if score .tutorial game matches 620 run function f:missions/quest {q:008}
execute if score .tutorial game matches 731..781 run function f:missions/narrator {t:000,d:008.info}

execute if score .tutorial game matches 640 as @e[tag=car_key] run tag @s remove disabled
execute if score .tutorial game matches 730 as @e[tag=car_key] on vehicle run data merge entity @s {Glowing:1b}
execute if score .tutorial game matches 780 run schedule function f:missions/tutorial/zzz/car_kick_narrator 117s
execute if score .tutorial game matches 780 run schedule function f:missions/tutorial/zzz/car_kick 120s

execute if score .tutorial game matches 730..781 as @e[tag=car_key] if score @s item_placer matches 0 run scoreboard players set .tutorial game 800

############################################################
#
#
############################################################

#########
#
# TAKE OFF KEY FROM THE CAR
#
#########
execute if score .tutorial game matches 801 as @e[tag=car_key,tag=item_placer] at @s run playsound as:sfx.car_key_remove master @a
execute if score .tutorial game matches 801 run tag @e[tag=car_key] add disabled
execute if score .tutorial game matches 801 run scoreboard players set @a item_placer 0
execute if score .tutorial game matches 806 run playsound as:sfx.engine_turn_off master @a 4 0 47 1
execute if score .tutorial game matches 820 run fill 7 1 49 9 1 47 air
execute if score .tutorial game matches 806 run stopsound @a master as:music.car_radio
execute if score .tutorial game matches 808 run stopsound @a master as:sfx.engine_idle

execute if score .tutorial game matches ..820 run data remove entity @e[tag=car_handle,tag=interaction,limit=1] interaction

#########
#
# GO OUT OF THE CAR
#
#########
execute if score .tutorial game matches 820..821 as @e[x=5,y=2,z=48,distance=..3,limit=1,tag=car_handle,tag=interaction] on vehicle run data merge entity @s {Glowing:1b}
execute if score .tutorial game matches 820..830 as @e[x=5,y=2,z=48,distance=..3,limit=1,tag=car_handle,tag=interaction] if data entity @s interaction run scoreboard players set .tutorial game 850

execute if score .tutorial game matches 860 run title @a[tag=player.in_game] times 20 40 20
execute if score .tutorial game matches 860 run title @a[tag=player.in_game] title {"translate":"\ue001","color":"black"}
execute if score .tutorial game matches 880 as @e[x=5,y=2,z=48,distance=..3,limit=1,tag=car_handle,tag=interaction] on vehicle run data merge entity @s {Glowing:0b}
execute if score .tutorial game matches 880 run playsound as:sfx.car_open_door master @a 4.92 2.00 47.69
execute if score .tutorial game matches 920 run playsound as:sfx.car_close_door master @a 4.92 2.00 47.69
execute if score .tutorial game matches 920 run tp @a[tag=player.in_game] 4.4 1 46.5 18 44

##AFTER QUIT QUEST
execute if score .tutorial game matches 930 run function f:missions/quest {q:009}
execute if score .tutorial game matches 860 run schedule clear f:missions/tutorial/zzz/car_kick
execute if score .tutorial game matches 860 run schedule clear f:missions/tutorial/zzz/car_kick_narrator

##WAIT FOR
execute if score .tutorial game matches 931 if entity @a[tag=player.in_game,x=9,y=2,z=41,distance=..1] run scoreboard players set .tutorial game 932
execute if score .tutorial game matches 950..990 run function f:missions/narrator {t:000,d:006}
execute if score .tutorial game matches 990..1000 run function f:missions/narrator {t:000,d:007}

execute if score .tutorial game matches 1001 if entity @a[tag=player.in_game,x=9,y=15,z=40,distance=..2] run scoreboard players set .tutorial game 1100
execute if score .tutorial game matches 1101 run function f:missions/narrator {t:000,d:008}
execute if score .tutorial game matches 1130 run function f:missions/quest {q:010}