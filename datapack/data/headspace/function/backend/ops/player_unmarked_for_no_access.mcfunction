advancement revoke @s only headspace:backend/ops/player_unmarked_for_no_access

scoreboard players set @s hs.admin.PlayerAccess 0

execute unless predicate headspace:headspace_user run return fail

function headspace:backend/alert/player_unbanned_from_headspace

execute if predicate headspace:in_headspace unless items entity @s container.* minecraft:goat_horn[custom_data={item_id:"headspace:otherworld_fragment"}] run function headspace:backend/item/fragment/otherworld/give
execute if predicate headspace:in_otherworld unless items entity @s container.* minecraft:goat_horn[custom_data={item_id:"headspace:headspace_fragment"}] run function headspace:backend/item/fragment/headspace/give