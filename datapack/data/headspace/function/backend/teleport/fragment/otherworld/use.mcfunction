$function headspace:backend/teleport/fragment/headspace/save_location with storage headspace:player/$(uuid) player

$execute at @s as @e[distance=..16,predicate=headspace:pet,nbt={Owner:$(UUID),Sitting:false}] run function headspace:backend/teleport/fragment/otherworld/go_to_location with storage headspace:player/$(uuid) player.fragment.otherworld

$return run function headspace:backend/teleport/fragment/otherworld/go_to_location with storage headspace:player/$(uuid) player.fragment.otherworld