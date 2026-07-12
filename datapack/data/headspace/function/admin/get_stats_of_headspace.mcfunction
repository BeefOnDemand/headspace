tellraw @s [{text:"[System] ",color:blue},{text:"Getting stats of Headspace...",color:"gray"}]
tellraw @s ""
tellraw @s ["",{text:"Players have entered/exited Headspace "},{score:{name:"[Headspace]",objective:"hs.stats.TotalUses"}},{text:" times:"}]
tellraw @s ["",{text:" - "},{score:{name:"[Headspace]",objective:"hs.stats.FragmentUses"}},{text:" fragment uses."}]
tellraw @s ["",{text:" - "},{score:{name:"[Headspace]",objective:"hs.stats.BedUses"}},{text:" bed uses."}]
tellraw @s ["",{text:" - "},{score:{name:"[Headspace]",objective:"hs.stats.VoidUses"}},{text:" void uses."}]
tellraw @s ""