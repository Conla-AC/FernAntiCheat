scoreboard players set @s[tag=rising] __rising__ 12
scoreboard players set @s[tag=falling] __falling__ 12
#if not tags
scoreboard players remove @s[tag=!rising,scores={__rising__=!..0}] __rising__ 1
scoreboard players remove @s[tag=!falling,scores={__falling__=!..0}] __falling__ 1
