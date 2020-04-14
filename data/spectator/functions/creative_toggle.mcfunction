execute unless score #bool specCreative matches 1 run scoreboard players set #changed specCreative 1
execute unless score #bool specCreative matches 1 run scoreboard players set #bool specCreative 1
execute if score #bool specCreative matches 1 unless score #changed specCreative matches 1 run scoreboard players set #bool specCreative 0
scoreboard players set #changed specCreative 0

execute if score #bool specCreative matches 1 run tellraw @s "Creative mode disabled will toggle Spectator"
execute if score #bool specCreative matches 0 run tellraw @s "Creative mode enabled will not toggle Spectator"