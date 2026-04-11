execute if entity @s[tag=sprint,scores={xz_speed=..42}] run scoreboard players add @s __tmp_sprintslow 1
execute unless entity @s[scores={xz_speed=..42}] run scoreboard players set @s __tmp_sprintslow 0
execute if entity @s[tag=!sprint] run scoreboard players set @s __tmp_sprintslow 0
execute if entity @s[scores={__tmp_sprintslow=10..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (K) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[scores={__tmp_sprintslow=10..}] run scoreboard players add @s Speedvl 1
scoreboard players set @s[scores={__tmp_sprintslow=10..}] __tmp_sprintslow 0