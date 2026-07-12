scoreboard players set [Headspace] hs.setts.DisablePlayerStress 0

bossbar set headspace:stress_0 visible true
bossbar set headspace:stress_10 visible true
bossbar set headspace:stress_20 visible true
bossbar set headspace:stress_30 visible true
bossbar set headspace:stress_40 visible true
bossbar set headspace:stress_50 visible true
bossbar set headspace:stress_60 visible true
bossbar set headspace:stress_70 visible true
bossbar set headspace:stress_80 visible true
bossbar set headspace:stress_90 visible true
bossbar set headspace:stress_100 visible true

function headspace:backend/stress/update

tellraw @s [{text:"[System] ",color:blue},{text:"Player stress enabled.",color:"gray"}]