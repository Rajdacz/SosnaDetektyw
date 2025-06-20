execute if entity @s[x=7,y=1,z=25,dx=10,dy=20,dz=17] at @s run function f:ambient/building/add_in_building
execute if entity @s[x=4,y=0,z=47,dx=1,dy=2,dz=1] at @s run function f:ambient/building/add_in_building
execute unless entity @s[x=7,y=1,z=25,dx=10,dy=20,dz=17] unless entity @s[x=4,y=0,z=47,dx=1,dy=2,dz=1] if entity @s[tag=player.in_building] run function f:ambient/building/out_of_building