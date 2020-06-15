execute unless score .overrideGamemode spec_admin matches 1 run scoreboard players set #changed spec_admin 1
execute unless score .overrideGamemode spec_admin matches 1 run scoreboard players set .overrideGamemode spec_admin 1
execute if score .overrideGamemode spec_admin matches 1 unless score #changed spec_admin matches 1 run scoreboard players set .overrideGamemode spec_admin 0
scoreboard players set #changed spec_admin 0

execute if score .overrideGamemode spec_admin matches 1 run tellraw @s ["",{"text":"Switching to Survival or Spectator ","color":"gold"},{"text":"will now ","color":"dark_green"},{"text":"implement the Datapack","color":"gold"}]
execute if score .overrideGamemode spec_admin matches 0 run tellraw @s ["",{"text":"Switching to Survival or Spectator ","color":"gold"},{"text":"will no longer ","color":"dark_red"},{"text":"implement the Datapack","color":"gold"}]
