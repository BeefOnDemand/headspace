advancement revoke @s only headspace:backend/event/player_slept_in_headspace

scoreboard players set @s hs.check.EnteredBed 0
scoreboard players set @s hs.stress.TicksWithoutSleep 0
tellraw @s [{"text":"You feel a little better for now.",color:"gray","italic":true}]