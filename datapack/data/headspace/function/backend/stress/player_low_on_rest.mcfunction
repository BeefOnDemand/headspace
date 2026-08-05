advancement revoke @s only headspace:backend/stress/player_low_on_rest

scoreboard players set @s hs.stress.TicksWithoutSleep 0
scoreboard players add @s hs.stress.DaysWithoutSleep 1

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail
execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run return fail
scoreboard players add @s hs.track.PlayerStress 10
scoreboard players set @s hs.check.StressChanged 1

tellraw @s [{"text":"You haven't slept in a while...",color:"gray","italic":true}]