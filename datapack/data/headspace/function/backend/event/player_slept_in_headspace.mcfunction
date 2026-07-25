advancement revoke @s only headspace:backend/event/player_slept_in_headspace

scoreboard players set @s hs.check.EnteredBed 0
scoreboard players set @s hs.stress.TicksWithoutSleep 0

execute if score @s hs.track.PlayerStress matches 90.. run return run tellraw @s [{"text":"You cannot sleep here any longer.",color:"red","italic":true}]
execute if score @s hs.track.PlayerStress matches ..50 run return run tellraw @s [{"text":"You feel restless.",color:"gray","italic":true}]

scoreboard players set @s hs.track.PlayerStress 50
scoreboard players set @s hs.check.StressChanged 1
tellraw @s [{"text":"You feel a little better for now.",color:"gray","italic":true}]