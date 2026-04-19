scoreboard players add @s[tag=sprint,scores={xz_speed=..62,__dead_time__=!1..}] __tmp_sprintslow 1
scoreboard players set @s[scores={xz_speed=..62}] __tmp_sprintslow 0
scoreboard players set @s[tag=!sprint] __tmp_sprintslow 0
execute if entity @s[scores={__tmp_sprintslow=10..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (K) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[scores={__tmp_sprintslow=10..}] Speedvl 1
scoreboard players set @s[scores={__tmp_sprintslow=10..}] __tmp_sprintslow 0
