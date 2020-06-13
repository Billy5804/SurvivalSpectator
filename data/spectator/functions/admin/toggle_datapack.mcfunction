execute unless score .enableDatapack spec_admin matches 1 run scoreboard players set #changed spec_admin 1
execute unless score .enableDatapack spec_admin matches 1 run scoreboard players set .enableDatapack spec_admin 1
execute if score .enableDatapack spec_admin matches 1 unless score #changed spec_admin matches 1 run scoreboard players set .enableDatapack spec_admin 0
scoreboard players set #changed spec_admin 0

execute if score .enableDatapack spec_admin matches 1 run tellraw @s ["",{"text":"Survival Spectator Datapack has been ","color":"gold"},{"text":"Enabled","color":"dark_green"}]
execute if score .enableDatapack spec_admin matches 0 run tellraw @s ["",{"text":"Survival Spectator Datapack has been  ","color":"gold"},{"text":"Disabled","color":"dark_red"}]
