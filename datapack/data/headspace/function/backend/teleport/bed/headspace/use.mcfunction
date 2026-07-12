$function headspace:backend/teleport/bed/otherworld/save_location with storage headspace:player/$(uuid) player

$execute at @s as @e[distance=..16,predicate=headspace:pet,nbt={Owner:$(UUID),Sitting:false}] run function headspace:backend/teleport/bed/headspace/go_to_location with storage headspace:player/$(uuid) player.bed.headspace

$return run function headspace:backend/teleport/bed/headspace/go_to_location with storage headspace:player/$(uuid) player.bed.headspace