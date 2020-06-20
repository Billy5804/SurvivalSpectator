execute unless score .adventureSurvival spec_admin matches 1 run scoreboard players set #changed spec_admin 1
execute unless score .adventureSurvival spec_admin matches 1 run scoreboard players set .adventureSurvival spec_admin 1
execute if score .adventureSurvival spec_admin matches 1 unless score #changed spec_admin matches 1 run scoreboard players set .adventureSurvival spec_admin 0
scoreboard players set #changed spec_admin 0

execute if score .adventureSurvival spec_admin matches 1 run tellraw @s ["",{"text":"Adventure Mode ","color":"gold"},{"text":"will now ","color":"dark_green"},{"text":"be disabled and act as Survival Mode","color":"gold"}]
execute if score .adventureSurvival spec_admin matches 0 run tellraw @s ["",{"text":"Adventure Mode ","color":"gold"},{"text":"will no longer ","color":"dark_red"},{"text":"be disabled","color":"gold"}]