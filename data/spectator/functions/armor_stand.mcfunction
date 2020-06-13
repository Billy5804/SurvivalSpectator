execute positioned as @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["spec", "new"],NoGravity:1b,NoAI:1b, Small: 1, Marker: 1, Invisible: 1}

execute positioned as @s run data modify entity @e[type=minecraft:armor_stand, limit=1, tag=new] Rotation set from entity @s Rotation

execute positioned as @s store result score @e[type=minecraft:armor_stand, limit=1, tag=new] spec_x run data get entity @s Pos[0] 8
execute positioned as @s store result score @e[type=minecraft:armor_stand, limit=1, tag=new] spec_y run data get entity @s Pos[1] 64
execute positioned as @s store result score @e[type=minecraft:armor_stand, limit=1, tag=new] spec_z run data get entity @s Pos[2] 8

execute positioned as @s store result score @e[type=minecraft:armor_stand, limit=1, tag=new] spec_loadX run data get entity @s Pos[0] 0.0625
execute positioned as @s store result score @e[type=minecraft:armor_stand, limit=1, tag=new] spec_loadZ run data get entity @s Pos[2] 0.0625

execute positioned as @s run data modify entity @e[type=minecraft:armor_stand, limit=1, tag=new] Tags set value ["spec"]

execute positioned as @s run forceload add ~ ~