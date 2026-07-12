$tellraw @s [{text:"[System] ",color:blue},{text:"Getting storage of $(player)...",color:"gray"}]
$execute if score $(player) hs.alert.PlayerQuit matches 1 run return run tellraw @s [{text:"[System] ",color:blue},{text:"Player does not yet have storage!",color:"gray"}]
tellraw @s ""
$function headspace:backend/tools/execute_with_uuid_storage/0 {function:"headspace:backend/tools/access_player_storage", target:"$(player)"}
tellraw @s ""