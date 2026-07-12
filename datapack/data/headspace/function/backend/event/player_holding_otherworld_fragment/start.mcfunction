advancement revoke @s only headspace:backend/event/player_holding_otherworld_fragment/start

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail

scoreboard players set @s hs.event.HoldingOtherworldFragment 1

execute if entity @s[tag=hs.tag.HeadspaceTeleportUsed] run tag @s add hs.tag.StillWakingUpInHeadspace
tag @s remove hs.tag.HeadspaceTeleportUsed

execute if entity @s[tag=hs.tag.StillWakingUpInHeadspace] run return run function headspace:backend/effect/blindness/start