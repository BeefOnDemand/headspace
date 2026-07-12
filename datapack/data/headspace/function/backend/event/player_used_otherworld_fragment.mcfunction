advancement revoke @s only headspace:backend/event/player_used_otherworld_fragment

execute if score [Headspace] hs.dpack.Enabled matches 0 run return run function headspace:backend/alert/headspace_disabled

effect give @s minecraft:slow_falling 1 0 true

scoreboard players set @s hs.check.TeleportSuccess 0
execute store success score @s hs.check.TeleportSuccess run function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/teleport/fragment/otherworld/use", target: "@s"}
execute if score @s hs.check.TeleportSuccess matches 1 run tag @s add hs.tag.OtherworldTeleportUsed
execute if score @s hs.check.TeleportSuccess matches 1 run function headspace:backend/statistics/fragment_used
execute if score @s hs.check.TeleportSuccess matches 0 run function headspace:backend/teleport/default/otherworld/use