# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.door.root] run return 0
execute on passengers if entity @s[tag=aj.door.data] unless data entity @s {data:{rigHash: 'd6b9cc575faf02a2e65b6923b2667f962c0b42fdeb730fc60fa8183fecc19c59'}} on vehicle run function animated_java:door/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1