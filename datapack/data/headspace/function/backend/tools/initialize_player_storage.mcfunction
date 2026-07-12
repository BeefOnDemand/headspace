$data modify storage headspace:player/$(uuid) player.bed.otherworld.dimension set value "minecraft:overworld"
$data modify storage headspace:player/$(uuid) player.bed.otherworld.x set value 0
$data modify storage headspace:player/$(uuid) player.bed.otherworld.y set value 1000
$data modify storage headspace:player/$(uuid) player.bed.otherworld.y_bed set value 1000
$data modify storage headspace:player/$(uuid) player.bed.otherworld.z set value 0

$data modify storage headspace:player/$(uuid) player.bed.headspace.dimension set value "headspace:bluescreen"
$data modify storage headspace:player/$(uuid) player.bed.headspace.x set value 0
$data modify storage headspace:player/$(uuid) player.bed.headspace.y set value 1000
$data modify storage headspace:player/$(uuid) player.bed.headspace.y_bed set value 1000
$data modify storage headspace:player/$(uuid) player.bed.headspace.z set value 0

$data modify storage headspace:player/$(uuid) player.fragment.otherworld.dimension set from storage headspace:world/otherworld world.default.dimension
$data modify storage headspace:player/$(uuid) player.fragment.otherworld.x set from storage headspace:world/otherworld world.default.x
$data modify storage headspace:player/$(uuid) player.fragment.otherworld.y set from storage headspace:world/otherworld world.default.y
$data modify storage headspace:player/$(uuid) player.fragment.otherworld.z set from storage headspace:world/otherworld world.default.z

$data modify storage headspace:player/$(uuid) player.fragment.headspace.dimension set from storage headspace:world/headspace world.default.dimension
$data modify storage headspace:player/$(uuid) player.fragment.headspace.x set from storage headspace:world/headspace world.default.x
$data modify storage headspace:player/$(uuid) player.fragment.headspace.y set from storage headspace:world/headspace world.default.y
$data modify storage headspace:player/$(uuid) player.fragment.headspace.z set from storage headspace:world/headspace world.default.z

$data modify storage headspace:player/$(uuid) player.initialized set value "yes"