summon item_display ~ ~ ~ {Tags:["temp"]}
data modify entity @n[tag=temp] item set from storage f:game player.held_item
item replace entity @s hotbar.0 from entity @n[tag=temp] container.0
kill @e[tag=temp]