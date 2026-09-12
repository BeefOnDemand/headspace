advancement revoke @s only headspace:backend/event/player_slept_in_otherworld

scoreboard players set @s hs.check.EnteredBed 0
scoreboard players set @s hs.stress.TicksWithoutSleep 0
scoreboard players set @s hs.stress.DaysWithoutSleep 0

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail
execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run return fail
scoreboard players set @s hs.track.PlayerStress 0
scoreboard players set @s hs.check.StressChanged 1
tellraw @s [{"text":"You feel well-rested.",color:"gray","italic":true}]