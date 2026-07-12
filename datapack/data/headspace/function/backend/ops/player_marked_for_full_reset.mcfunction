advancement revoke @s only headspace:admin/full_reset
advancement revoke @s only headspace:backend/ops/player_marked_for_full_reset

execute if predicate headspace:in_headspace run function headspace:backend/teleport/default/otherworld/use

tag @s remove hs.tag.HeadspaceUser

advancement revoke @s only headspace:backend/event/player_entered_headspace_for_first_time
advancement revoke @s from headspace:story/start
advancement revoke @s from headspace:story/blackscreen/start
advancement revoke @s from headspace:story/whitescreen/start

function headspace:backend/item/fragment/headspace/clear
function headspace:backend/item/fragment/otherworld/clear

function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/tools/initialize_player_storage", target: "@s"}
function headspace:backend/tools/initialize_player_scoreboard

function headspace:backend/stress/reset