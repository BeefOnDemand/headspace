advancement revoke @s only headspace:backend/stress/fully_stressed

execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run return fail

title @s actionbar {"text":"Your mind and body are failing. You must rest now.",color:"red",bold:true}

effect give @s minecraft:darkness 1 0 true
effect give @s[scores={hs.track.PlayerFood=3..}] minecraft:hunger 1 1 true
effect give @s minecraft:weakness 1 1 true
effect give @s minecraft:slowness 1 1 true