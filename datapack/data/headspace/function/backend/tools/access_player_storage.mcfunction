tellraw @s {text:"Player Info",color:green}
$tellraw @s [{text:" -- UUID: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.uuid",color:white}]
$tellraw @s [{text:" -- Initialized: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.initialized",color:white}]

tellraw @s {text:"Bed Locations",color:green}
tellraw @s {text:" - Otherworld",color:aqua}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.otherworld.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.otherworld.x",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.otherworld.y",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.otherworld.z",color:white}]
tellraw @s {text:" - Headspace",color:blue}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.headspace.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.headspace.x",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.headspace.y",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.bed.headspace.z",color:white}]

tellraw @s {text:"Fragment Locations",color:green}
tellraw @s {text:" - Otherworld",color:aqua}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.otherworld.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.otherworld.x",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.otherworld.y",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.otherworld.z",color:white}]
tellraw @s {text:" - Headspace",color:blue}
$tellraw @s [{text:" -- Dimension: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.headspace.dimension",color:white}]
$tellraw @s [{text:" -- Coordinates: ",color:yellow},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.headspace.x",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.headspace.y",color:white},{text:" "},{"storage":"headspace:player/$(uuid)","nbt":"player.fragment.headspace.z",color:white}]