advancement revoke @s only headspace:backend/ops/player_marked_for_ban

scoreboard players set @s hs.admin.PlayerBanned 1

execute as @s if predicate headspace:in_headspace run function headspace:backend/teleport/default/otherworld/use

function headspace:backend/item/fragment/headspace/clear
function headspace:backend/item/fragment/otherworld/clear

execute if predicate headspace:headspace_user run function headspace:backend/alert/player_banned_from_headspace