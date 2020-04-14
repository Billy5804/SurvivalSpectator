execute run data modify entity @e[type=minecraft:armor_stand, tag=spec, tag=check, limit=1] Tags set value ["spec", "checking"]

execute as @s if score @s spec_x = @e[type=minecraft:armor_stand, tag=spec, tag=checking, limit=1] spec_x if score @s spec_z = @e[type=minecraft:armor_stand, tag=spec, tag=checking, limit=1] spec_z if score @s spec_y = @e[type=minecraft:armor_stand, tag=spec, tag=checking, limit=1] spec_y run scoreboard players set @s target 1

execute if score @s target matches 1 run data modify entity @e[type=minecraft:armor_stand, tag=spec, tag=checking, limit=1] Tags set value ["spec", "current"]

execute run data modify entity @e[type=minecraft:armor_stand, tag=spec, tag=checking, limit=1] Tags set value ["spec"]

execute if score @s target matches 1 as @e[type=minecraft:armor_stand, tag=spec, tag=check] run data modify entity @s Tags set value ["spec"]

execute as @s unless score @s target matches 1 if entity @e[type=minecraft:armor_stand, tag=spec, tag=check] run function spectator:find_origin
