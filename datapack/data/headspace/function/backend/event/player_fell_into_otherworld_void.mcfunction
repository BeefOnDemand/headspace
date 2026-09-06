advancement revoke @s only headspace:backend/event/player_fell_into_otherworld_void

tag @s add hs.tag.BrushWithDeath

effect give @s minecraft:slow_falling 1 0 true

execute unless function headspace:backend/tools/check_player_access run return run function headspace:backend/teleport/default/otherworld/use

function headspace:backend/teleport/void/otherworld/use

tag @s add hs.tag.HeadspaceTeleportUsed
function headspace:backend/statistics/void_used

execute unless predicate headspace:holding_headspace_fragment run function headspace:backend/effect/blindness/trigger