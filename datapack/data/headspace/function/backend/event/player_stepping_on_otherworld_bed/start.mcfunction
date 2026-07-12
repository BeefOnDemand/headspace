advancement revoke @s only headspace:backend/event/player_stepping_on_otherworld_bed/start

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail

scoreboard players set @s hs.event.SteppingOnOtherworldBed 1

execute if entity @s[tag=hs.tag.HeadspaceTeleportUsed] run tag @s add hs.tag.StillWakingUpInHeadspace
execute if entity @s[tag=hs.tag.HeadspaceTeleportUsed] run tag @s add hs.tag.StillOnOtherworldBed
tag @s remove hs.tag.HeadspaceTeleportUsed

execute if entity @s[tag=hs.tag.StillWakingUpInHeadspace] run return run function headspace:backend/effect/blindness/start

function headspace:backend/effect/darkness/start
