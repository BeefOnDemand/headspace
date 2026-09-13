advancement revoke @s only headspace:backend/event/player_unaware_of_datapack

execute if score [Headspace] hs.setts.EnablePackAnnouncements matches 1 run function headspace:backend/alert/datapack_installed

scoreboard players set @s hs.dpack.Installed 1