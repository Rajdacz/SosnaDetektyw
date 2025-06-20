playsound as:block.door_handle ambient @a

execute if entity @s[tag=!locked,tag=!in_animation,tag=opened] run return run function animated_java:door/animations/close/play
execute if entity @s[tag=!locked,tag=!in_animation,tag=!opened] run return run function animated_java:door/animations/open/play