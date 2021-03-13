execute if score .hardcoreMode spec_admin matches 0 as @a[scores={Spectate=1..}] run function spectator:toggle
execute if score .hardcoreRespawn spec_admin matches 1 as @a[scores={Spectate=1..}] run function spectator:toggle
execute if score .hardcoreMode spec_admin matches 1 if score .hardcoreRespawn spec_admin matches 0 as @a[scores={Spectate=1..}] unless score @s spec_hasDied matches 1 run function spectator:toggle

execute if score .adventureSurvival spec_admin matches 1 as @a if entity @s[gamemode=adventure] run function spectator:survival_dim

execute as @a[gamemode=survival, scores={Spectate=1..}] unless score @s spec_gamemode matches 0 run scoreboard players set @s spec_gamemode 0
execute as @a[gamemode=creative, scores={Spectate=1..}] unless score @s spec_gamemode matches 1 run scoreboard players set @s spec_gamemode 1
execute as @a[gamemode=spectator, scores={Spectate=1..}] unless score @s spec_gamemode matches 3 run scoreboard players set @s spec_gamemode 3

scoreboard players reset @a Spectate
scoreboard players enable @a Spectate

execute if score .overrideGamemode spec_admin matches 1 if score .overrideCreative spec_admin matches 0 as @a if entity @s[gamemode=spectator, scores={spec_gamemode=1}] run function spectator:check_player
execute if score .overrideGamemode spec_admin matches 1 as @a if entity @s[gamemode=survival, scores={spec_gamemode=3}] run function spectator:survival_dim
execute if score .overrideGamemode spec_admin matches 1 as @a if entity @s[gamemode=spectator, scores={spec_gamemode=0}] run function spectator:check_player

execute if score .overrideCreative spec_admin matches 1 as @a if entity @s[gamemode=creative] run function spectator:creative_override

execute as @a if entity @s[gamemode=survival] unless score @s spec_gamemode matches 0 run scoreboard players set @s spec_gamemode 0
execute as @a if entity @s[gamemode=creative] unless score @s spec_gamemode matches 1 run scoreboard players set @s spec_gamemode 1
execute as @a if entity @s[gamemode=spectator] unless score @s spec_gamemode matches 3 run scoreboard players set @s spec_gamemode 3

execute if score .hardcoreMode spec_admin matches 1 as @a run function spectator:check_dead

execute as @a if score @s spec_logout matches 1 if entity @s[gamemode=spectator] run function spectator:toggle
execute as @a run scoreboard players reset @s spec_logout