advancement revoke @s only headspace:backend/event/player_in_otherworld/stop

execute if predicate headspace:logging_events run tellraw @a[predicate=headspace:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" exited Otherworld.",color:"gray","italic":true}]

scoreboard players set @s hs.event.InOtherworld 0