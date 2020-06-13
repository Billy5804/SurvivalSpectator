execute as @a[scores={Spectate=1..}] run function spectator:toggle
scoreboard players reset @a Spectate
scoreboard players enable @a Spectate
execute if score .overrideCreative spec_admin matches 1 as @a if entity @s[gamemode=creative] run function spectator:creative_override
execute as @a if entity @s[gamemode=survival] unless score @s spec_gamemode matches 0 run scoreboard players set @s spec_gamemode 0
execute as @a if entity @s[gamemode=spectator] unless score @s spec_gamemode matches 3 run scoreboard players set @s spec_gamemode 3
execute as @a run function spectator:check_dead

execute as @a if score @s logout matches 1 if entity @s[gamemode=spectator] run function spectator:toggle
execute as @a run scoreboard players reset @s logout

