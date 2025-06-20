data remove entity @s interaction
data remove entity @s attack

execute on vehicle if entity @s[tag=disabled] run return 1

# Swap items
execute on vehicle if data entity @s item run data modify storage f:temp temp set from entity @s item
execute on vehicle unless data entity @s item run data remove storage f:temp temp

execute on vehicle if data storage f:game player.held_item run data modify entity @s item set from storage f:game player.held_item
execute on vehicle unless data storage f:game player.held_item run data remove entity @s item

execute if data storage f:temp temp run data modify storage f:game player.held_item set from storage f:temp temp
execute unless data storage f:temp temp run data remove storage f:game player.held_item

execute as @a[tag=player.in_game] run function f:game/player/load_item