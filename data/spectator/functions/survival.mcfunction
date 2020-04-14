execute as @e[type=minecraft:armor_stand, tag=spec] run data modify entity @s Tags set value ["spec", "check"]

execute as @s run scoreboard players reset @s target

execute as @s run function spectator:find_origin

execute as @s run tp @e[type=minecraft:armor_stand, tag=spec, tag=current, limit=1]

execute store result score x chunk run scoreboard players get @e[type=minecraft:armor_stand, tag=spec, tag=current,limit=1] ld_x

execute store result score z chunk run scoreboard players get @e[type=minecraft:armor_stand, tag=spec, tag=current,limit=1] ld_z

scoreboard players set unload chunk 0

execute if score @s spec_dim matches 0 in minecraft:overworld as @e[type=minecraft:armor_stand, tag=spec, tag=!current, nbt={Dimension: 0}] unless score unload chunk matches 1 if score @s ld_x = x chunk if score @s ld_z = z chunk run scoreboard players set unload chunk 1
execute if score @s spec_dim matches -1 in minecraft:the_nether as @e[type=minecraft:armor_stand, tag=spec, tag=!current, nbt={Dimension: -1}] unless score unload chunk matches 1 if score @s ld_x = x chunk if score @s ld_z = z chunk run scoreboard players set unload chunk 1
execute if score @s spec_dim matches 1 in minecraft:the_end as @e[type=minecraft:armor_stand, tag=spec, tag=!current, nbt={Dimension: 1}] unless score unload chunk matches 1 if score @s ld_x = x chunk if score @s ld_z = z chunk run scoreboard players set unload chunk 1

execute if score unload chunk matches 0 positioned as @e[type=minecraft:armor_stand, tag=spec, tag=current, limit=1] run forceload remove ~ ~

execute run kill @e[type=minecraft:armor_stand, tag=spec, tag=current,limit=1]

gamemode survival @s