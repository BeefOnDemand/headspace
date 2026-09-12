# do not check patch if it has already been applied
execute if data storage headspace:datapack pack.patch.1_0_2 run return fail

# mark the patch as checked
data modify storage headspace:datapack pack.patch.1_0_2 set value ""

# do not apply patch if this is the first version installed
$execute if data storage headspace:datapack pack.origin.$(current) run return fail

# do not apply patch if the affected versions were not installed
execute unless data storage headspace:datapack pack.history.1_0_0 run return fail
execute unless data storage headspace:datapack pack.history.1_0_1 run return fail


# removing the display of stress from the global player list if it was previously displayed
scoreboard objectives setdisplay list

# removing stress bar displays if stress is disabled
execute if score [Headspace] hs.setts.DisablePlayerStress matches 1 run function headspace:admin/disable_player_stress