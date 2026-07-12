$tellraw @s [{text:"[System] ",color:blue},{text:"Getting stats of $(player)...",color:"gray"}]
tellraw @s ""
$tellraw @s ["",{text:"$(player) has entered/exited Headspace "},{score:{name:"$(player)",objective:"hs.stats.TotalUses"}},{text:" times:"}]
$tellraw @s ["",{text:" - "},{score:{name:"$(player)",objective:"hs.stats.FragmentUses"}},{text:" fragment uses."}]
$tellraw @s ["",{text:" - "},{score:{name:"$(player)",objective:"hs.stats.BedUses"}},{text:" bed uses."}]
$tellraw @s ["",{text:" - "},{score:{name:"$(player)",objective:"hs.stats.VoidUses"}},{text:" void uses."}]
tellraw @s ""