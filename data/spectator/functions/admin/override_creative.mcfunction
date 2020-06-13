execute unless score .overrideCreative spec_admin matches 1 run scoreboard players set #changed spec_admin 1
execute unless score .overrideCreative spec_admin matches 1 run scoreboard players set .overrideCreative spec_admin 1
execute if score .overrideCreative spec_admin matches 1 unless score #changed spec_admin matches 1 run scoreboard players set .overrideCreative spec_admin 0
scoreboard players set #changed spec_admin 0

execute if score .overrideCreative spec_admin matches 1 run tellraw @s ["",{"text":"Creative mode overridden ","color":"gold"},{"text":"will now ","color":"dark_green"},{"text":"toggle Spectator","color":"gold"}]
execute if score .overrideCreative spec_admin matches 0 run tellraw @s ["",{"text":"Creative mode restored ","color":"gold"},{"text":"will no longer ","color":"dark_red"},{"text":"toggle Spectator","color":"gold"}]
