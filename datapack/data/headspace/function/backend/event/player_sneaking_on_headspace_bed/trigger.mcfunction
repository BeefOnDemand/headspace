advancement revoke @s only headspace:backend/event/player_sneaking_on_headspace_bed/trigger

execute if entity @s[tag=hs.tag.StillOnHeadspaceBed] run return fail

execute unless function headspace:backend/tools/check_player_access run return fail

scoreboard players set @s hs.check.TeleportSuccess 0
execute store success score @s hs.check.TeleportSuccess run function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/teleport/bed/headspace/use", target: "@s"}
execute if score @s hs.check.LoadedChunk matches 1 if score @s hs.check.TeleportSuccess matches 0 run function headspace:backend/alert/otherworld_bed_not_found
execute if score @s hs.check.LoadedChunk matches 1 if score @s hs.check.TeleportSuccess matches 0 run function headspace:backend/teleport/default/headspace/use
execute if score @s hs.check.TeleportSuccess matches 1 run tag @s add hs.tag.HeadspaceTeleportUsed
execute if score @s hs.check.TeleportSuccess matches 1 run scoreboard players set @s hs.check.BedCooldown 1
execute if score @s hs.check.TeleportSuccess matches 1 run function headspace:backend/statistics/bed_used
execute if score @s hs.check.TeleportSuccess matches 1 run return run function headspace:backend/effect/blindness/start