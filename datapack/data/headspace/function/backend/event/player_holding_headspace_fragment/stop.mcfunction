advancement revoke @s only headspace:backend/event/player_holding_headspace_fragment/stop

scoreboard players set @s hs.event.HoldingHeadspaceFragment 0

execute if entity @s[tag=hs.tag.HeadspaceTeleportUsed] run return fail
execute if predicate headspace:on_headspace_bed run return fail
execute if predicate headspace:in_headspace run return fail

execute unless entity @s[tag=hs.tag.StillWakingUpInOtherworld] run return run function headspace:backend/effect/darkness/stop

tag @s remove hs.tag.StillWakingUpInOtherworld
function headspace:backend/effect/blindness/stop