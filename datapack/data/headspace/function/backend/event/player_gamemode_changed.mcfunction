advancement revoke @s only headspace:backend/event/player_gamemode_changed

scoreboard players set @s[gamemode=survival] hs.track.PlayerGamemode 0
scoreboard players set @s[gamemode=creative] hs.track.PlayerGamemode 1
scoreboard players set @s[gamemode=adventure] hs.track.PlayerGamemode 2
scoreboard players set @s[gamemode=spectator] hs.track.PlayerGamemode 3

scoreboard players set @s hs.check.GamemodeChanged 1