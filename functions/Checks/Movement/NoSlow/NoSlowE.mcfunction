#,tag=is_sprinting
execute if entity @s[scores={__using__=5..,__moving__=4..},tag=sprint,tag=sneak,tag=ground,tag=!DEV_OP] run tag @s add __noslow_vl__E
execute if entity @s[tag=__noslow_vl__E] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bNoSlow (E) §7(vl:"},{"score":{"name":"@s","objective":"NoSlowvl"}},{"text":")"}]}
scoreboard players add @s[tag=__noslow_vl__E] NoSlowvl 1
tag @s[tag=__noslow_vl__E] remove __noslow_vl__E
