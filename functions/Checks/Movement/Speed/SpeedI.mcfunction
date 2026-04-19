scoreboard players add @s[scores={speed=72..120,__dead_time__=!1..},m=!1,tag=!falling,tag=!dead,tag=!DEV_OP] __speed_tick__ 1
execute unless entity @s[scores={speed=72..120,__dead_time__=!1..}] run scoreboard players remove @s __speed_tick__ 1
execute if entity @s[scores={__speed_tick__=50..}] run tag @s add __speed_vl__I
execute if entity @s[tag=__speed_vl__I] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (I) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__I] Speedvl 1
scoreboard players set @s[scores={__speed_tick__=50..}] __speed_tick__ 0
tag @s[tag=__speed_vl__I] remove __speed_vl__I

