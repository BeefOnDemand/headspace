scoreboard players set [Headspace] hs.dpack.Enabled 1

tellraw @s [{text:"[System] ",color:blue},{text:"Headspace enabled.",color:"gray"}]

execute as @a[predicate=headspace:headspace_user] run function headspace:backend/alert/headspace_enabled