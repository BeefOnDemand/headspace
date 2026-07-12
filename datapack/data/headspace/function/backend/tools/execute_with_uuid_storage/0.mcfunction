# When called with another function as an argument, this function finds the caller's UUID storage reference and 
# executes the target funciton with it.
# This file passes the target function and an incrementing index (to prevent overwriting data) to the next step

execute if score [Headspace] hs.tools.StorageIndex matches 1..4 run scoreboard players add [Headspace] hs.tools.StorageIndex 1
execute if score [Headspace] hs.tools.StorageIndex matches 5 run scoreboard players set [Headspace] hs.tools.StorageIndex 1

execute store result storage headspace:player/temporary/0 storage.index int 1 run scoreboard players get [Headspace] hs.tools.StorageIndex
$data modify storage headspace:player/temporary/0 storage.function set value "$(function)"
$data modify storage headspace:player/temporary/0 storage.target set value "$(target)"

return run function headspace:backend/tools/execute_with_uuid_storage/1 with storage headspace:player/temporary/0 storage
