execute if score .hardcoreMode spec_admin matches 1 unless score .hardcoreRespawn spec_admin matches 1 run scoreboard players set #changed spec_admin 1
execute if score .hardcoreMode spec_admin matches 1 unless score .hardcoreRespawn spec_admin matches 1 run scoreboard players set .hardcoreRespawn spec_admin 1
execute if score .hardcoreRespawn spec_admin matches 1 unless score #changed spec_admin matches 1 run scoreboard players set .hardcoreRespawn spec_admin 0
scoreboard players set #changed spec_admin 0

execute if score .hardcoreMode spec_admin matches 0 run tellraw @s ["",{"text":"You must first enable hardcore mode","color":"red"}]

execute if score .hardcoreMode spec_admin matches 1 if score .hardcoreRespawn spec_admin matches 1 run tellraw @s ["",{"text":"Hardcore respawn has been ","color":"gold"},{"text":"Enabled","color":"dark_green"}]
execute if score .hardcoreMode spec_admin matches 1 if score .hardcoreRespawn spec_admin matches 0 run tellraw @s ["",{"text":"Hardcore respawn has been  ","color":"gold"},{"text":"Disabled","color":"dark_red"}]
