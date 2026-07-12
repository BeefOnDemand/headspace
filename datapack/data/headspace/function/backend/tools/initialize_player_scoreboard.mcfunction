execute unless score @s hs.check.TeleportSuccess matches 1 run scoreboard players set @s hs.check.TeleportSuccess 0
execute unless score @s hs.check.PermanentChunk matches 1 run scoreboard players set @s hs.check.PermanentChunk 0
execute unless score @s hs.check.LoadedChunk matches 1 run scoreboard players set @s hs.check.LoadedChunk 0
execute unless score @s hs.check.StressChanged matches 1 run scoreboard players set @s hs.check.StressChanged 0
execute unless score @s hs.check.GamemodeChanged matches 1 run scoreboard players set @s hs.check.GamemodeChanged 0

execute unless score @s hs.track.PlayerStress matches 1.. run scoreboard players set @s hs.track.PlayerStress 0
scoreboard players set @s[gamemode=survival] hs.track.PlayerGamemode 0
scoreboard players set @s[gamemode=creative] hs.track.PlayerGamemode 1
scoreboard players set @s[gamemode=adventure] hs.track.PlayerGamemode 2
scoreboard players set @s[gamemode=spectator] hs.track.PlayerGamemode 3

execute unless score @s hs.admin.PlayerBanned matches 1 run scoreboard players set @s hs.admin.PlayerBanned 0
execute unless score @s hs.admin.PlayerOnProbation matches 1 run scoreboard players set @s hs.admin.PlayerOnProbation 0

execute unless score @s hs.event.InHeadspace matches 1.. run scoreboard players set @s hs.event.InHeadspace 0
execute unless score @s hs.event.SneakingOnHeadspaceBed matches 1.. run scoreboard players set @s hs.event.SneakingOnHeadspaceBed 0
execute unless score @s hs.event.SteppingOnHeadspaceBed matches 1.. run scoreboard players set @s hs.event.SteppingOnHeadspaceBed 0
execute unless score @s hs.event.HoldingHeadspaceFragment matches 1.. run scoreboard players set @s hs.event.HoldingHeadspaceFragment 0
execute unless score @s hs.event.InOtherworld matches 1.. run scoreboard players set @s hs.event.InOtherworld 0
execute unless score @s hs.event.SneakingOnOtherworldBed matches 1.. run scoreboard players set @s hs.event.SneakingOnOtherworldBed 0
execute unless score @s hs.event.SteppingOnOtherworldBed matches 1.. run scoreboard players set @s hs.event.SteppingOnOtherworldBed 0
execute unless score @s hs.event.HoldingOtherworldFragment matches 1.. run scoreboard players set @s hs.event.HoldingOtherworldFragment 0

scoreboard players set @s hs.admin.PlayerInitialized 1