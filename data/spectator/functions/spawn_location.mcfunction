execute store result score @s spec_x run data get entity @s Pos[0] 64
execute store result score @s spec_y run data get entity @s Pos[1] 64
execute store result score @s spec_z run data get entity @s Pos[2] 64
execute store result score @s spec_dim run data get entity @s Dimension

execute if score @s spec_dim matches 0 in minecraft:overworld run function spectator:armor_stand
execute if score @s spec_dim matches -1 in minecraft:the_nether run function spectator:armor_stand
execute if score @s spec_dim matches 1 in minecraft:the_end run function spectator:armor_stand

execute if score @s spec_isDead matches 1 run execute unless score @s spec_checkLife matches 0 run scoreboard players set @s spec_isDead 0