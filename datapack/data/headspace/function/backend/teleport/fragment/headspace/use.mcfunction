$function headspace:backend/teleport/fragment/otherworld/save_location with storage headspace:player/$(uuid) player

$execute at @s as @e[distance=..16,predicate=headspace:pet,nbt={Owner:$(UUID),Sitting:false}] run function headspace:backend/teleport/fragment/headspace/go_to_location with storage headspace:player/$(uuid) player.fragment.headspace

$return run function headspace:backend/teleport/fragment/headspace/go_to_location with storage headspace:player/$(uuid) player.fragment.headspace