scoreboard objectives add spec_x dummy
scoreboard objectives add spec_y dummy
scoreboard objectives add spec_z dummy
scoreboard objectives add spec_dim dummy

#scoreboard objectives add spec_motionX dummy
#scoreboard objectives add spec_motionY dummy
#scoreboard objectives add spec_motionZ dummy

scoreboard objectives add spec_admin dummy
execute unless score .overrideCreative spec_admin = .overrideCreative spec_admin run scoreboard players set .overrideCreative spec_admin 0
execute unless score .hardcoreRespawn spec_admin = .hardcoreRespawn spec_admin run scoreboard players set .hardcoreRespawn spec_admin 0
execute unless score .hardcoreMode spec_admin = .hardcoreMode spec_admin run scoreboard players set .hardcoreMode spec_admin 0
execute unless score .overrideGamemode spec_admin = .overrideGamemode spec_admin run scoreboard players set .overrideGamemode spec_admin 0
execute unless score .spectateTime spec_admin = .spectateTime spec_admin run scoreboard players set .spectateTime spec_admin -1

scoreboard objectives add Spectate trigger

scoreboard objectives add spec_hasDied dummy
scoreboard objectives add spec_isDead dummy
scoreboard objectives add spec_checkLife health
scoreboard objectives add spec_loadX dummy
scoreboard objectives add spec_loadZ dummy

scoreboard objectives add spec_chunk dummy
scoreboard objectives add spec_target dummy

scoreboard objectives add spec_gamemode dummy

scoreboard objectives add spec_logout minecraft.custom:minecraft.leave_game