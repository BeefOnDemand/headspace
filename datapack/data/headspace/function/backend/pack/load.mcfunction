# PLAYER VARIABLES
# These are tracked per-player

# Statistics
scoreboard objectives add hs.stats.TotalUses dummy
scoreboard objectives add hs.stats.FragmentUses dummy
scoreboard objectives add hs.stats.BedUses dummy
scoreboard objectives add hs.stats.DeathbedUses dummy
scoreboard objectives add hs.stats.VoidUses dummy

# Alerts
scoreboard objectives add hs.alert.PlayerQuit minecraft.custom:minecraft.leave_game
scoreboard objectives add hs.alert.PlayerDied deathCount
scoreboard objectives add hs.alert.PlayerRespawned minecraft.custom:minecraft.time_since_death
scoreboard objectives add hs.alert.PlayerSlept minecraft.custom:minecraft.time_since_rest

# Tracking
scoreboard objectives add hs.track.PlayerHealth health
scoreboard objectives add hs.track.PlayerFood food
scoreboard objectives add hs.track.PlayerStress dummy
scoreboard objectives add hs.track.PlayerGamemode dummy

# Event State
scoreboard objectives add hs.event.InHeadspace dummy
scoreboard objectives add hs.event.SneakingOnHeadspaceBed dummy
scoreboard objectives add hs.event.SteppingOnHeadspaceBed dummy
scoreboard objectives add hs.event.HoldingHeadspaceFragment dummy
scoreboard objectives add hs.event.InOtherworld dummy
scoreboard objectives add hs.event.SneakingOnOtherworldBed dummy
scoreboard objectives add hs.event.SteppingOnOtherworldBed dummy
scoreboard objectives add hs.event.HoldingOtherworldFragment dummy

# Stress State
scoreboard objectives add hs.stress.TicksWithoutSleep dummy
scoreboard objectives add hs.stress.DaysWithoutSleep dummy

# Admin
scoreboard objectives add hs.admin.PlayerBanned dummy
scoreboard objectives add hs.admin.PlayerOnProbation dummy
scoreboard objectives add hs.admin.PlayerInitialized dummy

# Temporary
scoreboard objectives add hs.check.TeleportSuccess dummy
scoreboard objectives add hs.check.PermanentChunk dummy
scoreboard objectives add hs.check.LoadedChunk dummy
scoreboard objectives add hs.check.BedLocated dummy
scoreboard objectives add hs.check.StressChanged dummy
scoreboard objectives add hs.check.GamemodeChanged dummy
scoreboard objectives add hs.check.ConditionsPassed dummy
scoreboard objectives add hs.check.EnteredBed dummy
scoreboard objectives add hs.check.FragmentConfirmed dummy
scoreboard objectives add hs.check.BedCooldown dummy


# SYSTEM VARIABLES
# These are tracked only once on the [Headspace] scoreboard

# Datapack
scoreboard objectives add hs.dpack.Installed dummy
scoreboard objectives add hs.dpack.Enabled dummy
scoreboard objectives add hs.dpack.Updated dummy

# Settings
scoreboard objectives add hs.setts.EnablePlayersByDefault dummy
scoreboard objectives add hs.setts.DisablePlayerStress dummy
scoreboard objectives add hs.setts.EnablePackAnnouncements dummy

# Temporary
scoreboard objectives add hs.tools.StorageIndex dummy
scoreboard objectives add hs.tools.ReinitializePack dummy



# Headspace Teams Settings
team add hs.team.Whitescreen
team modify hs.team.Whitescreen displayName Headspace
team modify hs.team.Whitescreen seeFriendlyInvisibles true
team modify hs.team.Whitescreen deathMessageVisibility never
team modify hs.team.Whitescreen color gray
team modify hs.team.Whitescreen friendlyFire true
team modify hs.team.Whitescreen suffix "?"

team add hs.team.Bluescreen
team modify hs.team.Bluescreen displayName Headspace
team modify hs.team.Bluescreen seeFriendlyInvisibles true
team modify hs.team.Bluescreen deathMessageVisibility never
team modify hs.team.Bluescreen color blue
team modify hs.team.Bluescreen friendlyFire false
team modify hs.team.Bluescreen suffix "?"

team add hs.team.Blackscreen
team modify hs.team.Blackscreen displayName Headspace
team modify hs.team.Blackscreen seeFriendlyInvisibles true
team modify hs.team.Blackscreen deathMessageVisibility never
team modify hs.team.Blackscreen color black
team modify hs.team.Blackscreen friendlyFire true
team modify hs.team.Blackscreen suffix "?"


# Player stress level bar displays
bossbar add headspace:stress_0 "stress_0"
bossbar set headspace:stress_0 name [{text:"Calm",color:"gray"}]
bossbar set headspace:stress_0 color white
bossbar set headspace:stress_0 style progress
bossbar set headspace:stress_0 max 100
bossbar set headspace:stress_0 value 0
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_0 visible true

bossbar add headspace:stress_10 "stress_10"
bossbar set headspace:stress_10 name [{text:"Calm",color:"gray"}]
bossbar set headspace:stress_10 color white
bossbar set headspace:stress_10 style progress
bossbar set headspace:stress_10 max 100
bossbar set headspace:stress_10 value 10
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_10 visible true

bossbar add headspace:stress_20 "stress_20"
bossbar set headspace:stress_20 name [{text:"Calm",color:"gray"}]
bossbar set headspace:stress_20 color white
bossbar set headspace:stress_20 style progress
bossbar set headspace:stress_20 max 100
bossbar set headspace:stress_20 value 20
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_20 visible true

bossbar add headspace:stress_30 "stress_30"
bossbar set headspace:stress_30 name [{text:"Tired",color:"gray"}]
bossbar set headspace:stress_30 color white
bossbar set headspace:stress_30 style progress
bossbar set headspace:stress_30 max 100
bossbar set headspace:stress_30 value 30
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_30 visible true

bossbar add headspace:stress_40 "stress_40"
bossbar set headspace:stress_40 name [{text:"Tired",color:"gray"}]
bossbar set headspace:stress_40 color white
bossbar set headspace:stress_40 style progress
bossbar set headspace:stress_40 max 100
bossbar set headspace:stress_40 value 40
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_40 visible true

bossbar add headspace:stress_50 "stress_50"
bossbar set headspace:stress_50 name [{text:"Exhausted",color:"gray"}]
bossbar set headspace:stress_50 color white
bossbar set headspace:stress_50 style progress
bossbar set headspace:stress_50 max 100
bossbar set headspace:stress_50 value 50
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_50 visible true

bossbar add headspace:stress_60 "stress_60"
bossbar set headspace:stress_60 name [{text:"Exhausted",color:"gray"}]
bossbar set headspace:stress_60 color white
bossbar set headspace:stress_60 style progress
bossbar set headspace:stress_60 max 100
bossbar set headspace:stress_60 value 60
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_60 visible true

bossbar add headspace:stress_70 "stress_70"
bossbar set headspace:stress_70 name [{text:"Distressed",color:"gray"}]
bossbar set headspace:stress_70 color yellow
bossbar set headspace:stress_70 style progress
bossbar set headspace:stress_70 max 100
bossbar set headspace:stress_70 value 70
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_70 visible true

bossbar add headspace:stress_80 "stress_80"
bossbar set headspace:stress_80 name [{text:"Distressed",color:"gray"}]
bossbar set headspace:stress_80 color yellow
bossbar set headspace:stress_80 style progress
bossbar set headspace:stress_80 max 100
bossbar set headspace:stress_80 value 80
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_80 visible true

bossbar add headspace:stress_90 "stress_90"
bossbar set headspace:stress_90 name [{text:"Stressed Out",color:"gray"}]
bossbar set headspace:stress_90 color red
bossbar set headspace:stress_90 style progress
bossbar set headspace:stress_90 max 100
bossbar set headspace:stress_90 value 90
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_90 visible true

bossbar add headspace:stress_100 "stress_100"
bossbar set headspace:stress_100 name [{text:"Stressed Out",color:"red",bold:true}]
bossbar set headspace:stress_100 color red
bossbar set headspace:stress_100 style progress
bossbar set headspace:stress_100 max 100
bossbar set headspace:stress_100 value 100
execute unless score [Headspace] hs.setts.DisablePlayerStress matches 1 unless score [Headspace] hs.dpack.Enabled matches 0 run bossbar set headspace:stress_100 visible true

function headspace:backend/stress/update


# Datapack Initialization
scoreboard players set [Headspace] hs.tools.StorageIndex 1
execute unless data storage headspace:datapack pack.initialized run function headspace:backend/pack/initialize

# Runs any update code for new version of datapack (one time), applies patches, and keeps record of previously loaded versions
function headspace:backend/pack/update {major:1, minor:0, fix:3}
data modify storage headspace:datapack pack.changes set value '\
* Fixed issue where fragment teleporting w/ friends does not always work the first time \n\
* Fixed issue where forceloaded chunks are never unloaded after a bed teleport (my bad) \n\
* Changed stress and sleep chat messages to never show if player stress is disabled \n\
* Changed pack install/update chat alerts to not display to players by default (can be re-enabled with admin function) \n\
* Some backend changes to how patching works \n\
'