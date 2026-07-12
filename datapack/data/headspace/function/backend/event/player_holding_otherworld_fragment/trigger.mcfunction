advancement revoke @s only headspace:backend/event/player_holding_otherworld_fragment/trigger

execute if score @s hs.event.HoldingOtherworldFragment matches 2.. run return run scoreboard players remove @s hs.event.HoldingOtherworldFragment 1

execute if entity @s[tag=hs.tag.StillWakingUpInHeadspace] run return run function headspace:backend/effect/blindness/trigger

function headspace:backend/effect/darkness/trigger