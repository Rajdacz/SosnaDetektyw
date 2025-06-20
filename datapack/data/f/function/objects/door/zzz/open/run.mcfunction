execute if entity @s[tag=objects.door.opened] run return 1

tag @s remove objects.door.closed
tag @s add objects.door.opened
tag @s add objects.playing
scoreboard players set @s timer 1

#DEV
# For opening with hand - not implemented (yet?)
#$execute as @p at @s run summon item_display ^ ^ ^ {Tags:["objects.door.player"],Passengers:[{id:"villager",NoAI:true,Tags:["objects.door.player_head"],Rotation:$(Rotation)}],Rotation:$(Rotation)}
#$execute as @p at @s run summon item_display ~ ~ ~ {Tags:["objects.door.player"],Rotation:$(Rotation),teleport_duration:2}
#gamemode spectator @p
#spectate @n[tag=objects.door.player] @p
#execute as @p at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=objects.door.player] ~ ~ ~ ~ ~
#data modify entity @n[tag=objects.door.player] teleport_duration set value 50
#tp @n[tag=objects.door.player] ^0.40625 ^1.62 ^-1 facing ^0.40625 ^1 ^

return 1