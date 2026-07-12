advancement revoke @s only headspace:backend/event/player_holding_headspace_fragment/trigger

execute if score @s hs.event.HoldingHeadspaceFragment matches 2.. run return run scoreboard players remove @s hs.event.HoldingHeadspaceFragment 1

execute if score @s[tag=hs.tag.StillWakingUpInOtherworld] hs.event.HoldingHeadspaceFragment matches 1 run return run function headspace:backend/effect/blindness/trigger

function headspace:backend/effect/darkness/trigger