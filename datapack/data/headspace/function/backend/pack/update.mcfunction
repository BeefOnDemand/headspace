execute if data storage headspace:datapack pack.history.1_0_2 run return fail
data modify storage headspace:datapack pack.history.1_0_2 set value ""
execute unless data storage headspace:datapack pack.origin run data modify storage headspace:datapack pack.origin.1_0_2 set value ""
data modify storage headspace:datapack pack.version set value "v1.0.2"
data modify storage headspace:datapack pack.changes set value '\
* Fixed issue with stress bar showing up when player stress is disabled \n\
* Removed numerical display of player stress in the global player list \n\
'

function headspace:backend/pack/patch/check
scoreboard players add [Headspace] hs.dpack.Updated 1