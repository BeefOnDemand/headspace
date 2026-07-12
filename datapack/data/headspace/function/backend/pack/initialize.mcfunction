scoreboard players set [Headspace] hs.tools.ReinitializePack 0

# Find and store overworld spawn coordinates as the default teleport location for the otherworld
summon minecraft:marker ~ ~ ~ {CustomName:"hs.WorldSpawnMarker"}
execute as @e[type=minecraft:marker,name="hs.WorldSpawnMarker",limit=1] run function headspace:backend/tools/set_default_otherworld_location_at_player
data modify storage headspace:world/otherworld world.default.dimension set value "minecraft:overworld"
kill @e[type=minecraft:marker,name="hs.WorldSpawnMarker",limit=1]

# Set default teleport location for headspace
data modify storage headspace:world/headspace world.default.dimension set value "headspace:bluescreen"
data modify storage headspace:world/headspace world.default.x set value 0
data modify storage headspace:world/headspace world.default.y set value 80
data modify storage headspace:world/headspace world.default.z set value 0

# Finish initilization
data modify storage headspace:datapack pack.initialized set value "yes"
scoreboard players set [Headspace] hs.dpack.Enabled 1