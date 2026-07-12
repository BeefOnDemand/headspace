scoreboard players set [Headspace] hs.setts.DisablePlayerStress 1

bossbar set headspace:stress_0 visible false
bossbar set headspace:stress_10 visible false
bossbar set headspace:stress_20 visible false
bossbar set headspace:stress_30 visible false
bossbar set headspace:stress_40 visible false
bossbar set headspace:stress_50 visible false
bossbar set headspace:stress_60 visible false
bossbar set headspace:stress_70 visible false
bossbar set headspace:stress_80 visible false
bossbar set headspace:stress_90 visible false
bossbar set headspace:stress_100 visible false

tellraw @s [{text:"[System] ",color:blue},{text:"Player stress disabled.",color:"gray"}]