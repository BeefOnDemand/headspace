# necessary to call reinitialization function from here so that it is executed by/at "the world" rather than a player
execute if score [Headspace] hs.tools.ReinitializePack matches 1 run function headspace:backend/pack/initialize

scoreboard players add @a[predicate=!headspace:invincible] hs.stress.TicksWithoutSleep 1