$data modify storage headspace:player/$(uuid) player.bed.headspace.dimension set from entity @s Dimension

$data modify storage headspace:player/$(uuid) player.bed.headspace.x set from block ~ ~ ~ x
$data modify storage headspace:player/$(uuid) player.bed.headspace.y_bed set from block ~ ~ ~ y
$data modify storage headspace:player/$(uuid) player.bed.headspace.y set from entity @s Pos[1]
$data modify storage headspace:player/$(uuid) player.bed.headspace.z set from block ~ ~ ~ z