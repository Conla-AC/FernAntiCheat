execute if entity @s[scores={speed=72..120},m=!1,tag=!falling,tag=!dead,tag=!DEV_OP] run scoreboard players add @s __speed_tick__ 1
execute unless entity @s[scores={speed=72..120}] run scoreboard players remove @s __speed_tick__ 1
execute if entity @s[scores={__speed_tick__=50..}] run tag @s add __speed_vl__I
execute if entity @s[tag=__speed_vl__I] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (I) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__I] run scoreboard players add @s Speedvl 1
scoreboard players set @s[scores={__speed_tick__=50..}] __speed_tick__ 0
tag @a[tag=__speed_vl__I] remove __speed_vl__I