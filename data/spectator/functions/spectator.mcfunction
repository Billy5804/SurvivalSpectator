execute store result score @s spec_x run data get entity @s Pos[0] 8
execute store result score @s spec_y run data get entity @s Pos[1] 64
execute store result score @s spec_z run data get entity @s Pos[2] 8
#1.15 and below
execute store result score @s spec_dim run data get entity @s Dimension 

#1.16 and above
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s spec_dim 0
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s spec_dim -1
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s spec_dim 1

execute if score @s spec_dim matches 0 in minecraft:overworld run function spectator:armor_stand
execute if score @s spec_dim matches -1 in minecraft:the_nether run function spectator:armor_stand
execute if score @s spec_dim matches 1 in minecraft:the_end run function spectator:armor_stand

gamemode spectator @s