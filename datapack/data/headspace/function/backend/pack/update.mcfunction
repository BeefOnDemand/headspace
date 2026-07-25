execute if data storage headspace:datapack pack.history.1_0_1 run return fail
data modify storage headspace:datapack pack.history.1_0_1 set value ""
execute unless data storage headspace:datapack pack.origin run data modify storage headspace:datapack pack.origin.1_0_1 set value ""
data modify storage headspace:datapack pack.version set value "v1.0.1"
data modify storage headspace:datapack pack.changes set value '\
* Bed teleporting fully reworked, should no longer incorrectly fail to find a bed if it still exists \n\
* If no bed is found when trying to teleport out of headspace, you will now be teleported to a default location \n\
* Sleeping in headspace can now reduce your stress level back to 50% (as long as the bar is not red) \n\
* Bluescreen weather disabled (for now) \n\
'

function headspace:backend/pack/patch/check
scoreboard players add [Headspace] hs.dpack.Updated 1