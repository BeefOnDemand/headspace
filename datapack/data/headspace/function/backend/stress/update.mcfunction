advancement revoke @s only headspace:backend/stress/update

scoreboard players set @s hs.check.StressChanged 0
scoreboard players set @s hs.check.GamemodeChanged 0

title @s actionbar ""

bossbar set headspace:stress_0 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=..9}]
bossbar set headspace:stress_10 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=10..19}]
bossbar set headspace:stress_20 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=20..29}]
bossbar set headspace:stress_30 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=30..39}]
bossbar set headspace:stress_40 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=40..49}]
bossbar set headspace:stress_50 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=50..59}]
bossbar set headspace:stress_60 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=60..69}]
bossbar set headspace:stress_70 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=70..79}]
bossbar set headspace:stress_80 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=80..89}]
bossbar set headspace:stress_90 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=90..99}]
bossbar set headspace:stress_100 players @a[predicate=!headspace:invincible,scores={hs.track.PlayerStress=100..}]