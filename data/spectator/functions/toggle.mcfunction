execute if entity @s[gamemode=spectator] run scoreboard players set @s Spectate 6142
execute if entity @s[gamemode=spectator] run function spectator:survival_dim
execute unless score @s Spectate matches 6142 run function spectator:check_player