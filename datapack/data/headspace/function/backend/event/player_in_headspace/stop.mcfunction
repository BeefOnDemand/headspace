advancement revoke @s only headspace:backend/event/player_in_headspace/stop

execute if predicate headspace:logging_events run tellraw @a[predicate=headspace:viewing_events] [{"text":"[EVENT] ",color:"gray"},{"selector":"@s","italic":true},{"text":" exited Headspace.",color:"gray","italic":true}]

scoreboard players set @s hs.event.InHeadspace 0