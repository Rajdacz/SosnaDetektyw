# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.prop.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'prop', 'function_path': 'animated_java:prop/animations/bodyblood1/stop'}
tag @s remove aj.prop.animation.bodyblood1.playing
scoreboard players set @s aj.bodyblood1.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:prop/animations/bodyblood1/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only