advancement revoke @s only headspace:backend/event/player_slept_on_otherworld_deathbed

function headspace:backend/teleport/deathbed/otherworld/use
tag @s add hs.tag.HeadspaceTeleportUsed
function headspace:backend/statistics/deathbed_used
execute unless predicate headspace:holding_otherworld_fragment run function headspace:backend/effect/blindness/trigger