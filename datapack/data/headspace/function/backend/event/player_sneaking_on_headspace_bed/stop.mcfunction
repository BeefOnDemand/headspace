advancement revoke @s only headspace:backend/event/player_sneaking_on_headspace_bed/stop

scoreboard players set @s hs.event.SneakingOnHeadspaceBed 0

execute if entity @s[tag=hs.tag.ForceloadedHeadspaceChunk] run function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/teleport/bed/headspace/unload_location", target: "@s"}
scoreboard players set @s hs.check.PermanentChunk 0
tag @s remove hs.tag.ForceloadedHeadspaceChunk