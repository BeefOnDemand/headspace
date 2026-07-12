tellraw @s [{text:"[System] ",color:blue},{text:"Getting info of Headspace...",color:"gray"}]
tellraw @s ""
tellraw @s ["",{text:"Headspace ",bold:true,color:blue},{storage:"headspace:datapack",nbt:"pack.version",color:yellow,interpret:true}]
execute if score [Headspace] hs.dpack.Enabled matches 1 run tellraw @s ["",{text:"- Enabled: "},{text:"yes",color:green}]
execute if score [Headspace] hs.dpack.Enabled matches 0 run tellraw @s ["",{text:"- Enabled: "},{text:"no",color:red}]
execute if data storage headspace:datapack pack.initialized run tellraw @s ["",{text:"- Initialized: "},{text:"yes",color:green}]
execute unless data storage headspace:datapack pack.initialized run tellraw @s ["",{text:"- Initialized: "},{text:"no",color:red}]
tellraw @s ["",{text:"Version notes: \n",bold:true,color:yellow},{storage:"headspace:datapack",nbt:"pack.changes",interpret:true}]
tellraw @s ""