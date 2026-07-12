advancement revoke @s only headspace:backend/event/player_rejoined_world_in_otherworld

scoreboard players set @s hs.alert.PlayerQuit 0

execute if score [Headspace] hs.dpack.Enabled matches 0 run function headspace:backend/alert/headspace_disabled

function headspace:backend/stress/update