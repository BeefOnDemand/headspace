advancement revoke @s only headspace:backend/event/player_sneaking_on_otherworld_bed/trigger

execute if entity @s[tag=hs.tag.StillOnOtherworldBed] run return fail

execute if score [Headspace] hs.dpack.Enabled matches 0 run return run function headspace:backend/alert/headspace_disabled

scoreboard players set @s hs.check.TeleportSuccess 0
execute store success score @s hs.check.TeleportSuccess run function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/teleport/bed/otherworld/use", target: "@s"}
execute if score @s hs.check.LoadedChunk matches 1 if score @s hs.check.TeleportSuccess matches 0 run function headspace:backend/alert/headspace_bed_not_found
execute if score @s hs.check.TeleportSuccess matches 1 run tag @s add hs.tag.OtherworldTeleportUsed
execute if score @s hs.check.TeleportSuccess matches 1 run scoreboard players set @s hs.check.BedCooldown 1
execute if score @s hs.check.TeleportSuccess matches 1 run function headspace:backend/statistics/bed_used
execute if score @s hs.check.TeleportSuccess matches 1 run return run function headspace:backend/effect/blindness/start