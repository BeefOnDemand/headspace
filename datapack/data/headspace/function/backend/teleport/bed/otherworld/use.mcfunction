$function headspace:backend/teleport/bed/headspace/save_location with storage headspace:player/$(uuid) player

$execute at @s as @e[distance=..16,predicate=headspace:pet,nbt={Owner:$(UUID),Sitting:false}] run function headspace:backend/teleport/bed/otherworld/go_to_location with storage headspace:player/$(uuid) player.bed.otherworld

$return run function headspace:backend/teleport/bed/otherworld/go_to_location with storage headspace:player/$(uuid) player.bed.otherworld