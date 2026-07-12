advancement revoke @s only headspace:admin/storage_reset
advancement revoke @s only headspace:backend/ops/player_marked_for_storage_reset

function headspace:backend/tools/execute_with_uuid_storage/0 {function: "headspace:backend/tools/initialize_player_storage", target: "@s"}