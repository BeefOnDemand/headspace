data modify storage headspace:datapack pack.patch.1_0_2 set value ""

# removing the display of stress from the global player list if it was previously displayed
execute unless data storage headspace:datapack pack.origin.1_0_2 run scoreboard objectives setdisplay list

# removing stress bar displays if stress is disabled
execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run function headspace:admin/disable_player_stress