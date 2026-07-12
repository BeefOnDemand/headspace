advancement revoke @s only headspace:backend/event/player_in_headspace/start

execute if predicate headspace:logging_events run tellraw @a[predicate=headspace:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered Headspace.",color:"gray","italic":true}]

scoreboard players set @s hs.event.InHeadspace 1

scoreboard players set @s hs.check.FragmentConfirmed 0

tag @s add hs.tag.HeadspaceUser

execute if score [Headspace] hs.dpack.Enabled matches 0 run function headspace:backend/teleport/default/otherworld/use
execute if score [Headspace] hs.dpack.Enabled matches 0 run return run function headspace:backend/alert/headspace_disabled

gamemode adventure @s[predicate=headspace:on_probation,gamemode=survival]

function headspace:backend/item/fragment/headspace/clear

execute if predicate headspace:banned run return run function headspace:backend/ops/player_marked_for_ban

execute unless items entity @s container.* minecraft:goat_horn[custom_data={item_id:"headspace:otherworld_fragment"}] run function headspace:backend/item/fragment/otherworld/give

execute as @a[team=hs.team.Bluescreen] run function headspace:backend/alert/player_entered_headspace

team join hs.team.Bluescreen @s

effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:hunger
effect clear @s minecraft:levitation

tag @s remove hs.tag.OtherworldTeleportUsed
tag @s remove hs.tag.StillWakingUpInOtherworld
tag @s remove hs.tag.StillOnHeadspaceBed

effect give @s minecraft:slow_falling 5 0 true
function headspace:backend/effect/headspace/trigger