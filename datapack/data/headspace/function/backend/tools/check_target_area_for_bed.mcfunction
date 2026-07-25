$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~ minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1

$execute in $(dimension) positioned $(x) $(y) $(z) if block ~-1 ~ ~ minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~1 ~ ~ minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~-1 minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~ ~ ~1 minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1

$execute in $(dimension) positioned $(x) $(y) $(z) if block ~-1 ~ ~-1 minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~-1 ~ ~1 minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~1 ~ ~-1 minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1
$execute in $(dimension) positioned $(x) $(y) $(z) if block ~1 ~ ~1 minecraft:blue_bed run return run scoreboard players set @s hs.check.BedLocated 1