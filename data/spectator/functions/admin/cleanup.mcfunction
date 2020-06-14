execute as @a[gamemode=spectator] run function spectator:survival_dim
kill @e[type=minecraft:armor_stand, tag=spec]
execute in minecraft:overworld run forceload remove all
execute in minecraft:the_end run forceload remove all
execute in minecraft:the_nether run forceload remove all

tellraw @s ["",{"text":"Survival Spectator Cleanup is ","color":"gold"},{"text":"Complete","color":"dark_green"}]