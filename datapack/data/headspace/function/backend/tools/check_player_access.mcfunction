execute if score [Headspace] hs.dpack.Enabled matches 0 unless function headspace:backend/alert/headspace_disabled run return fail

execute if score @s hs.admin.PlayerAccess matches -1 run return fail
execute if score @s hs.admin.PlayerAccess matches 1 run return 1

execute if score [Headspace] hs.setts.DefaultAccessLevel matches 2 run return 1
execute if score [Headspace] hs.setts.DefaultAccessLevel matches 1 unless entity @s[tag=hs.tag.BrushWithDeath] unless entity @s[tag=hs.tag.HeadspaceUser] run return fail
execute if score [Headspace] hs.setts.DefaultAccessLevel matches 0 run return fail