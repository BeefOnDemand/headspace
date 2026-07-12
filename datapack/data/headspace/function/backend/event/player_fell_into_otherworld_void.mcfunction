advancement revoke @s only headspace:backend/event/player_fell_into_otherworld_void

effect give @s minecraft:slow_falling 1 0 true

function headspace:backend/teleport/void/otherworld/use with storage headspace:world/headspace world.default

tag @s add hs.tag.HeadspaceTeleportUsed
function headspace:backend/statistics/void_used

execute unless predicate headspace:holding_headspace_fragment run function headspace:backend/effect/blindness/trigger