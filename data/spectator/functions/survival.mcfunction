execute as @e[type=minecraft:armor_stand, tag=spec] run data modify entity @s Tags set value ["spec", "check"]

execute as @s run scoreboard players reset @s spec_target

execute as @s run function spectator:find_origin

execute as @s run tp @e[type=minecraft:armor_stand, tag=spec, tag=current, limit=1]

execute store result score x spec_chunk run scoreboard players get @e[type=minecraft:armor_stand, tag=spec, tag=current,limit=1] spec_loadX

execute store result score z spec_chunk run scoreboard players get @e[type=minecraft:armor_stand, tag=spec, tag=current,limit=1] spec_loadZ

scoreboard players set unload spec_chunk 0

execute if score @s spec_dim matches 0 in minecraft:overworld as @e[type=minecraft:armor_stand, tag=spec, tag=!current, nbt={Dimension: 0}] unless score unload spec_chunk matches 1 if score @s spec_loadX = x spec_chunk if score @s spec_loadZ = z spec_chunk run scoreboard players set unload spec_chunk 1
execute if score @s spec_dim matches -1 in minecraft:the_nether as @e[type=minecraft:armor_stand, tag=spec, tag=!current, nbt={Dimension: -1}] unless score unload spec_chunk matches 1 if score @s spec_loadX = x spec_chunk if score @s spec_loadZ = z spec_chunk run scoreboard players set unload spec_chunk 1
execute if score @s spec_dim matches 1 in minecraft:the_end as @e[type=minecraft:armor_stand, tag=spec, tag=!current, nbt={Dimension: 1}] unless score unload spec_chunk matches 1 if score @s spec_loadX = x spec_chunk if score @s spec_loadZ = z spec_chunk run scoreboard players set unload spec_chunk 1

execute if score unload spec_chunk matches 0 positioned as @e[type=minecraft:armor_stand, tag=spec, tag=current, limit=1] run forceload remove ~ ~

execute run kill @e[type=minecraft:armor_stand, tag=spec, tag=current,limit=1]

gamemode survival @s

execute as @e[type=minecraft:armor_stand, limit=1] run data modify entity @s s set value 1