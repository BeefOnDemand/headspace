advancement revoke @s only headspace:backend/event/player_holding_headspace_fragment/start

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail

scoreboard players set @s hs.event.HoldingHeadspaceFragment 1

execute if entity @s[tag=hs.tag.OtherworldTeleportUsed] run tag @s add hs.tag.StillWakingUpInOtherworld
tag @s remove hs.tag.OtherworldTeleportUsed

execute if entity @s[tag=hs.tag.StillWakingUpInOtherworld] run return run function headspace:backend/effect/blindness/start