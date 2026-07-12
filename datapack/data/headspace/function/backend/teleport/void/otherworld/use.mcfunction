effect give @s minecraft:slow_falling 1 0 true

function headspace:backend/teleport/void/headspace/go_to_location with storage headspace:world/headspace world.default

tag @s add hs.tag.HeadspaceTeleportUsed
function headspace:backend/statistics/void_used