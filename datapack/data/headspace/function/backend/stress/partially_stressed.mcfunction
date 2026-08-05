advancement revoke @s only headspace:backend/stress/partially_stressed

execute if score [Headspace] hs.dpack.Enabled matches 0 run return fail
execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run return fail

title @s actionbar {"text":"Your health is declining. You need to rest soon.",color:"gray"}

effect give @s[scores={hs.track.PlayerFood=3..}] minecraft:hunger 1 0 true
effect give @s minecraft:weakness 1 0 true
effect give @s minecraft:slowness 1 0 true