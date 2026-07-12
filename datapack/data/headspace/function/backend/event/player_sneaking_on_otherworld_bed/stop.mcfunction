advancement revoke @s only headspace:backend/event/player_sneaking_on_otherworld_bed/stop

scoreboard players set @s hs.event.SneakingOnOtherworldBed 0

execute if entity @s[tag=hs.tag.ForceloadedOtherworldChunk] run function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/teleport/bed/otherworld/unload_location", target: "@s"}
scoreboard players set @s hs.check.PermanentChunk 0
tag @s remove hs.tag.ForceloadedOtherworldChunk