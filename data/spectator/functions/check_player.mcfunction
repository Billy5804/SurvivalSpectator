gamemode survival @s 

execute as @s run scoreboard players set @s spec_badEffect 0

#Check for bad effects
#Slowness	slowness	2
execute as @s[nbt={ActiveEffects:[{Id:2b}]}] run scoreboard players set @s spec_badEffect 1
#Mining Fatigue	mining_fatigue	4
execute as @s[nbt={ActiveEffects:[{Id:4b}]}] run scoreboard players set @s spec_badEffect 1
#Instant Damage	instant_damage	7
execute as @s[nbt={ActiveEffects:[{Id:7b}]}] run scoreboard players set @s spec_badEffect 1
#Nausea	nausea	9
execute as @s[nbt={ActiveEffects:[{Id:9b}]}] run scoreboard players set @s spec_badEffect 1
#Blindness	blindness	15
execute as @s[nbt={ActiveEffects:[{Id:15b}]}] run scoreboard players set @s spec_badEffect 1
#Hunger	hunger	17
execute as @s[nbt={ActiveEffects:[{Id:17b}]}] run scoreboard players set @s spec_badEffect 1
#Weakness	weakness	18
execute as @s[nbt={ActiveEffects:[{Id:18b}]}] run scoreboard players set @s spec_badEffect 1
#Poison	poison	19
execute as @s[nbt={ActiveEffects:[{Id:19b}]}] run scoreboard players set @s spec_badEffect 1
#Wither	wither	20
execute as @s[nbt={ActiveEffects:[{Id:20b}]}] run scoreboard players set @s spec_badEffect 1
#Levitation	levitation	25
execute as @s[nbt={ActiveEffects:[{Id:25b}]}] run scoreboard players set @s spec_badEffect 1
#Bad Luck	unluck	27
execute as @s[nbt={ActiveEffects:[{Id:27b}]}] run scoreboard players set @s spec_badEffect 1
#Bad Omen	bad_omen	31
execute as @s[nbt={ActiveEffects:[{Id:31b}]}] run scoreboard players set @s spec_badEffect 1

execute if score @s spec_badEffect matches 1 run tellraw @s {"text":"Cannot Spectate With Negative Effects","color":"red"}
execute as @s[nbt=!{Fire:-20s}] run tellraw @s {"text":"Cannot Spectate While On Fire","color":"red"}
execute as @s[nbt=!{OnGround:1b}] run tellraw @s {"text":"Cannot Spectate While Not On The Ground","color":"red"}
execute as @s[nbt=!{Air:300s}] run tellraw @s {"text":"Cannot Spectate While Holding Breath","color":"red"}
execute as @s[nbt={foodLevel:0}] run tellraw @s {"text":"Cannot Spectate While Starving","color":"red"}
#execute at @s unless block ~ ~1 ~ minecraft:air
#execute as @s[nbt=!{Motion:[0.0d, -0.0784000015258789d, 0.0d]}, nbt=!{Motion:[0.0d, -0.009800000190734863d, 0.0d]}, nbt=!{Motion:[0.0d, -0.0000000000000000000000000001d, 0.0d]}] run tellraw @s {"text":"Cannot Spectate While In Motion","color":"red"}

#Everything fine switch to Spectator
execute as @s[nbt={OnGround:1b, Fire:-20s, Air:300s}, nbt=!{foodLevel:0} scores={spec_badEffect=0}] run function spectator:spectator
#execute as @s[nbt={OnGround:1b, Fire:-20s, Motion:[0.0d, -0.0784000015258789d, 0.0d]}, scores={spec_badEffect=0}] run function spectator:spectator

#Slow Falling applied
#execute as @s[nbt={OnGround:1b, Fire:-20s, Motion:[0.0d, -0.009800000190734863d, 0.0d]}, scores={spec_badEffect=0}] run function spectator:spectator

#Switched Using /gamemode spectator
#execute as @s[nbt={OnGround:1b, Fire:-20s, Motion:[0.0d, -0.0000000000000000000000000001d, 0.0d]}, scores={spec_badEffect=0}] run function spectator:spectator

