scoreboard players set [Headspace] hs.dpack.Enabled 0

tellraw @s [{text:"[System] ",color:blue},{text:"Headspace disabled.",color:"gray"}]

execute as @a[predicate=headspace:in_headspace] run function headspace:backend/teleport/default/otherworld/use

execute as @a[predicate=headspace:headspace_user] run function headspace:backend/alert/headspace_disabled