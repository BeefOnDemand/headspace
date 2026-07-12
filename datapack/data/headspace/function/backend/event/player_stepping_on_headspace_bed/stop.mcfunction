advancement revoke @s only headspace:backend/event/player_stepping_on_headspace_bed/stop

scoreboard players set @s hs.event.SteppingOnHeadspaceBed 0

# If player just teleported away, don't do anything else
execute if entity @s[tag=hs.tag.HeadspaceTeleportUsed] run return fail
execute if predicate headspace:in_headspace run return fail

# Clear either blindness or darkness depending on if bed teleport effects are still active, and as long as a fragment is not being held
execute if entity @s[tag=hs.tag.StillWakingUpInOtherworld] unless predicate headspace:holding_headspace_fragment run function headspace:backend/effect/blindness/stop
execute unless entity @s[tag=hs.tag.StillWakingUpInOtherworld] unless predicate headspace:holding_headspace_fragment run function headspace:backend/effect/darkness/stop
execute unless predicate headspace:holding_headspace_fragment run tag @s remove hs.tag.StillWakingUpInOtherworld

# Allow bed teleporting again
tag @s remove hs.tag.StillOnHeadspaceBed





