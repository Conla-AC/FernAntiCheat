#,tag=is_sprinting
execute if entity @s[scores={__using__=12..,AirTick=15..},tag=!DEV_OP,tag=sprint] run tag @s add __noslow_vl__C
execute if entity @s[tag=__noslow_vl__C] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bNoSlow (C) §7(vl:"},{"score":{"name":"@s","objective":"NoSlowvl"}},{"text":")"}]}
scoreboard players add @s[tag=__noslow_vl__C] NoSlowvl 1
tag @s[tag=__noslow_vl__C] remove __noslow_vl__C
