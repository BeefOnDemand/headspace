advancement revoke @s only headspace:backend/event/player_stepping_on_headspace_bed/trigger

execute if entity @s[tag=hs.tag.StillWakingUpInOtherworld] run return run function headspace:backend/effect/blindness/trigger

function headspace:backend/effect/darkness/trigger