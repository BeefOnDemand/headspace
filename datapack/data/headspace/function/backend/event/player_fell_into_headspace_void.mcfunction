advancement revoke @s only headspace:backend/event/player_fell_into_headspace_void

function headspace:backend/teleport/void/headspace/use with storage headspace:world/otherworld world.default

tag @s add hs.tag.OtherworldTeleportUsed
function headspace:backend/statistics/void_used

execute unless predicate headspace:holding_otherworld_fragment run function headspace:backend/effect/blindness/trigger