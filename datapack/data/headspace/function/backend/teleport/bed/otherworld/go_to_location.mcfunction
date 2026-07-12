$execute in $(dimension) unless entity @s[tag=hs.tag.ForceloadedOtherworldChunk] store success score @s hs.check.PermanentChunk run forceload query $(x) $(z)
$execute in $(dimension) store success score @s hs.check.LoadedChunk run forceload query $(x) $(z)

$execute in $(dimension) if score @s hs.check.PermanentChunk matches 0 run forceload add $(x) $(z)
$execute in $(dimension) if score @s hs.check.PermanentChunk matches 0 run tag @s add hs.tag.ForceloadedOtherworldChunk

$execute if entity @s[type=!minecraft:player] in $(dimension) if block $(x) $(y_bed) $(z) minecraft:blue_bed run return run spreadplayers $(x) $(z) 0 16 false @s
$execute at @s as @a[distance=..1.5,sort=furthest,predicate=headspace:on_otherworld_bed,predicate=!headspace:sneaking,predicate=headspace:headspace_user] in $(dimension) if block $(x) $(y_bed) $(z) minecraft:blue_bed run tp $(x) $(y) $(z)
$execute in $(dimension) if block $(x) $(y_bed) $(z) minecraft:blue_bed run return run tp $(x) $(y) $(z)