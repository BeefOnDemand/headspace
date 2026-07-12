advancement revoke @s only headspace:backend/event/player_in_otherworld/trigger

tag @s remove hs.tag.OtherworldTeleportUsed

# code to fix issues with creation datapack clearing otherworld fragment and returning saved headspace fragment
execute unless predicate headspace:headspace_user run return fail
execute if score @s hs.check.FragmentConfirmed matches 1 run return fail
function headspace:backend/item/fragment/otherworld/clear
execute unless items entity @s container.* minecraft:goat_horn[custom_data={item_id:"headspace:headspace_fragment"}] run function headspace:backend/item/fragment/headspace/give
scoreboard players set @s hs.check.FragmentConfirmed 1