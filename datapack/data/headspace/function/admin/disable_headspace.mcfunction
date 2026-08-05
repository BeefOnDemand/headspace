scoreboard players set [Headspace] hs.dpack.Enabled 0

tellraw @s [{text:"[System] ",color:blue},{text:"Headspace disabled.",color:"gray"}]

execute as @a[predicate=headspace:in_headspace] run function headspace:backend/teleport/default/otherworld/use

execute as @a[predicate=headspace:headspace_user] run function headspace:backend/alert/headspace_disabled

# disable display of stress bars but don't change stress enable/disable setting
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