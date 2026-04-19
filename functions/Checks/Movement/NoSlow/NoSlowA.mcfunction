#,tag=is_sprinting
execute if entity @s[scores={__using__=3..},tag=using_item,tag=sprint,tag=ground,tag=!DEV_OP] run tag @s add __noslow_vl__A
execute if entity @s[tag=__noslow_vl__A] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bNoSlow (A) §7(vl:"},{"score":{"name":"@s","objective":"NoSlowvl"}},{"text":")"}]}
scoreboard players add @s[tag=__noslow_vl__A] NoSlowvl 1
tag @s[tag=__noslow_vl__A] remove __noslow_vl__A
