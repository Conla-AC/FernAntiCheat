#,tag=is_sprinting
execute if entity @s[scores={__using__=5..,xz_speed=69..,__moving__=6..,AirTick=25..},tag=!DEV_OP] run tag @s add __noslow_vl__D
execute if entity @s[tag=__noslow_vl__D] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bNoSlow (D) §7(vl:"},{"score":{"name":"@s","objective":"NoSlowvl"}},{"text":")"}]}
scoreboard players add @s[tag=__noslow_vl__D] NoSlowvl 1
tag @s[tag=__noslow_vl__D] remove __noslow_vl__D
