advancement revoke @s only headspace:backend/event/player_in_otherworld/start

execute if predicate headspace:logging_events run tellraw @a[predicate=headspace:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" entered Otherworld.",color:"gray","italic":true}]

scoreboard players set @s hs.event.InOtherworld 1

scoreboard players set @s hs.check.FragmentConfirmed 0

gamemode survival @s[predicate=headspace:on_probation,gamemode=adventure]

execute unless predicate headspace:headspace_user run return fail

function headspace:backend/item/fragment/otherworld/clear

execute unless predicate headspace:banned unless items entity @s container.* minecraft:goat_horn[custom_data={item_id:"headspace:headspace_fragment"}] run function headspace:backend/item/fragment/headspace/give

team leave @s[predicate=headspace:on_headspace_team]

title @s clear

execute if entity @s[tag=hs.tag.NewPlayer] run function headspace:backend/alert/player_escaped_headspace
tag @s remove hs.tag.NewPlayer

execute as @a[team=hs.team.Bluescreen] run function headspace:backend/alert/player_exited_headspace

tag @s remove hs.tag.HeadspaceTeleportUsed
tag @s remove hs.tag.StillWakingUpInHeadspace
tag @s remove hs.tag.StillOnOtherworldBed