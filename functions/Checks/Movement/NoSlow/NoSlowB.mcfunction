#,tag=is_sprinting
execute if entity @s[scores={__using__=12..,xz_speed=18..,__moving__=6..},tag=!DEV_OP,tag=moving,tag=ground] run tag @s add __noslow_vl__B
execute if entity @s[tag=__noslow_vl__B] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bNoSlow (B) §7(vl:"},{"score":{"name":"@s","objective":"NoSlowvl"}},{"text":")"}]}
execute if entity @s[tag=__noslow_vl__B] run scoreboard players add @s NoSlowvl 1
tag @a[tag=__noslow_vl__B] remove __noslow_vl__B