advancement revoke @s only headspace:backend/event/player_slept_on_headspace_deathbed

function headspace:backend/teleport/deathbed/headspace/use
tag @s add hs.tag.HeadspaceTeleportUsed
function headspace:backend/statistics/deathbed_used
execute unless predicate headspace:holding_headspace_fragment run function headspace:backend/effect/blindness/trigger