execute if data storage headspace:datapack pack.history.1_0_0 run return fail
data modify storage headspace:datapack pack.history.1_0_0 set value ""
execute unless data storage headspace:datapack pack.origin run data modify storage headspace:datapack pack.origin.1_0_0 set value ""
data modify storage headspace:datapack pack.version set value "v1.0.0"
data modify storage headspace:datapack pack.changes set value '\
* The very first published release of Headspace! \n\
'

function headspace:backend/pack/patch/check
scoreboard players add [Headspace] hs.dpack.Updated 1