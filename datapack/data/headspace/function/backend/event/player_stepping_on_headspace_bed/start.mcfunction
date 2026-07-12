advancement revoke @s only headspace:backend/event/player_stepping_on_headspace_bed/start

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail

scoreboard players set @s hs.event.SteppingOnHeadspaceBed 1

execute if entity @s[tag=hs.tag.OtherworldTeleportUsed] run tag @s add hs.tag.StillWakingUpInOtherworld
execute if entity @s[tag=hs.tag.OtherworldTeleportUsed] run tag @s add hs.tag.StillOnHeadspaceBed
tag @s remove hs.tag.OtherworldTeleportUsed

execute if entity @s[tag=hs.tag.StillWakingUpInOtherworld] run return run function headspace:backend/effect/blindness/start

function headspace:backend/effect/darkness/start