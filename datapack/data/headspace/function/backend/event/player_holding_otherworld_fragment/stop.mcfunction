advancement revoke @s only headspace:backend/event/player_holding_otherworld_fragment/stop

scoreboard players set @s hs.event.HoldingOtherworldFragment 0

execute if entity @s[tag=hs.tag.OtherworldTeleportUsed] run return fail
execute if predicate headspace:on_otherworld_bed run return fail
execute if predicate headspace:in_otherworld run return fail

execute unless entity @s[tag=hs.tag.StillWakingUpInHeadspace] run return run function headspace:backend/effect/darkness/stop

tag @s remove hs.tag.StillWakingUpInHeadspace
function headspace:backend/effect/blindness/stop