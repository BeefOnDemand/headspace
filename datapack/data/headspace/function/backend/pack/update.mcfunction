# do not run the update function if this version has already been installed
$execute if data storage headspace:datapack pack.history.$(major)_$(minor)_$(fix) run return fail

# update the current pack version, log that it was installed, and log whether it is the first version installed
$data modify storage headspace:datapack pack.version set value "v$(major).$(minor).$(fix)"
$data modify storage headspace:datapack pack.history.$(major)_$(minor)_$(fix) set value ""
$execute unless data storage headspace:datapack pack.origin run data modify storage headspace:datapack pack.origin.$(major)_$(minor)_$(fix) set value ""

# check for any patches to previous versions (will log but not apply any that are not needed)
$function headspace:backend/pack/patch/check {current:"$(major)_$(minor)_$(fix)"}

# increment the datapack update count so that players receive an update alert when they are next online
scoreboard players add [Headspace] hs.dpack.Updated 1