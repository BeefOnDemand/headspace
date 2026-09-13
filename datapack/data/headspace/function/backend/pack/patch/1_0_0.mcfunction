# this is a blank template for future patches

# do not check patch if it has already been applied
execute if data storage headspace:datapack pack.patch.1_0_0 run return fail

# mark the patch as checked
data modify storage headspace:datapack pack.patch.1_0_0 set value ""

# do not apply patch if this is the first version installed
$execute if data storage headspace:datapack pack.origin.$(current) run return fail

# do not apply patch if the affected versions were not installed (remove if patch applies to all versions before current)
execute unless data storage headspace:datapack pack.history.0_0_0 run return fail
execute unless data storage headspace:datapack pack.history.0_0_1 run return fail


# PATCH