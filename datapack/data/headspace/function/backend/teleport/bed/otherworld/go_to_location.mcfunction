$execute in $(dimension) positioned $(x) $(y) $(z) unless entity @s[tag=hs.tag.ForceloadedOtherworldChunk] store success score @s hs.check.PermanentChunk run forceload query ~ ~
$execute in $(dimension) positioned $(x) $(y) $(z) store success score @s hs.check.LoadedChunk run forceload query ~ ~
scoreboard players set @s hs.check.BedLocated 0

$execute in $(dimension) positioned $(x) $(y) $(z) if score @s hs.check.PermanentChunk matches 0 run forceload add ~ ~
$execute in $(dimension) if score @s hs.check.PermanentChunk matches 0 run tag @s add hs.tag.ForceloadedOtherworldChunk

$execute if score @s hs.check.LoadedChunk matches 1 run function headspace:backend/tools/check_target_area_for_bed {dimension:"$(dimension)",x:"$(x)",y:"$(y)",z:"$(z)"}

$execute if score @s hs.check.BedLocated matches 1 if entity @s[type=!minecraft:player] in $(dimension) run return run spreadplayers $(x) $(z) 0 16 false @s
$execute if score @s hs.check.BedLocated matches 1 at @s as @a[distance=..2,sort=furthest,predicate=headspace:on_otherworld_bed,predicate=!headspace:sneaking,predicate=headspace:headspace_user] in $(dimension) run tp $(x) $(y) $(z)
$execute if score @s hs.check.BedLocated matches 1 in $(dimension) run return run tp $(x) $(y) $(z)