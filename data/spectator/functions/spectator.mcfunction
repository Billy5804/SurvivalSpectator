execute store result score @s spec_x run data get entity @s Pos[0] 8
execute store result score @s spec_y run data get entity @s Pos[1] 64
execute store result score @s spec_z run data get entity @s Pos[2] 8
execute store result score @s spec_dim run data get entity @s Dimension

execute if score @s spec_dim matches 0 in minecraft:overworld run function spectator:armor_stand
execute if score @s spec_dim matches -1 in minecraft:the_nether run function spectator:armor_stand
execute if score @s spec_dim matches 1 in minecraft:the_end run function spectator:armor_stand

gamemode spectator @s