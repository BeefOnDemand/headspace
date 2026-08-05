scoreboard players set [Headspace] hs.dpack.Enabled 1

tellraw @s [{text:"[System] ",color:blue},{text:"Headspace enabled.",color:"gray"}]

execute as @a[predicate=headspace:headspace_user] run function headspace:backend/alert/headspace_enabled

# restore display of stress bars unless stress was disabled separately
execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run return fail
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