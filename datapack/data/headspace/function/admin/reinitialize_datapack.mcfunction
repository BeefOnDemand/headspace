function headspace:backend/pack/load
scoreboard players set [Headspace] hs.tools.ReinitializePack 1

tellraw @s [{text:"[System] ",color:blue},{text:"Headspace reinitialized.",color:"gray"}]