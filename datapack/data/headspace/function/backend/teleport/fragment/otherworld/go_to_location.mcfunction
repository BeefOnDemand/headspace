$execute if entity @s[type=!minecraft:player] in $(dimension) run return run spreadplayers $(x) $(z) 0 16 false @s

$execute if predicate headspace:sneaking at @s as @a[distance=..2,predicate=headspace:sneaking,predicate=headspace:headspace_user] in $(dimension) run return run tp $(x) $(y) $(z)

$execute in $(dimension) run return run tp @s $(x) $(y) $(z)