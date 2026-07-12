advancement revoke @s only headspace:backend/event/player_respawned_in_headspace

function headspace:backend/stress/reset

execute if score [Headspace] hs.dpack.Enabled matches 0 run function headspace:backend/teleport/default/otherworld/use

execute if score [Headspace] hs.dpack.Enabled matches 0 run function headspace:backend/alert/headspace_disabled