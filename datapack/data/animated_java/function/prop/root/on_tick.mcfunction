# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.prop.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:prop/as_root/pre_tick
execute if entity @s[tag=aj.prop.animation.plant_fall1.playing] run function animated_java:prop/animations/plant_fall1/zzz/on_tick
execute if entity @s[tag=aj.prop.animation.bodyblood1.playing] run function animated_java:prop/animations/bodyblood1/zzz/on_tick
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #animated_java:prop/as_root/post_tick