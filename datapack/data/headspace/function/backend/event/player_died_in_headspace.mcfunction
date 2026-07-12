advancement revoke @s only headspace:backend/event/player_died_in_headspace

scoreboard players set @s hs.alert.PlayerDied 0

tellraw @a [{"selector":"@s"},{"text":" lost their sanity",color:"white"}]