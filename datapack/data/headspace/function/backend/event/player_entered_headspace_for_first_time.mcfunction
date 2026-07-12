# Don't run new player code if lost advancement is being restored
execute as @s[tag=hs.tag.HeadspaceUser] run return fail

# Display welcome title
function headspace:backend/alert/player_discovered_headspace

# Add tag for new player so that special commands run on first exit from Headspace
tag @s add hs.tag.NewPlayer

# Add tag for headspace user as a backup for advancements being lost/cleared
tag @s add hs.tag.HeadspaceUser