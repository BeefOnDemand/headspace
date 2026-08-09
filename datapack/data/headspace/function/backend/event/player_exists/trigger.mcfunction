# Checkup commands for every connected player (runs once per second)
advancement revoke @s only headspace:backend/event/player_exists/trigger

# Enable headspace for all players if access level is open
execute if score [Headspace] hs.setts.DefaultAccessLevel matches 2 run tag @s[predicate=!headspace:headspace_user] add hs.tag.HeadspaceUser

# If headspace user lost all advancements, restore headspace functionality
advancement grant @s[tag=hs.tag.HeadspaceUser,predicate=!headspace:headspace_user] only headspace:backend/event/player_entered_headspace_for_first_time

# Display a headspace update message to the user if they haven't seen it yet
execute unless score @s hs.dpack.Updated = [Headspace] hs.dpack.Updated run scoreboard players set @s hs.check.ConditionsPassed 1
execute if score @s hs.check.ConditionsPassed matches 1 run scoreboard players operation @s hs.dpack.Updated = [Headspace] hs.dpack.Updated
execute if score @s hs.check.ConditionsPassed matches 1 if predicate headspace:headspace_user run function headspace:backend/alert/datapack_updated
scoreboard players set @s hs.check.ConditionsPassed 0
