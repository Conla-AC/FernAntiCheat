execute if entity @s[scores={xz_speed=670..},tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__C
execute if entity @s[tag=__speed_vl__C] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (C) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__C] run scoreboard players add @s Speedvl 1
tag @a[tag=__speed_vl__C] remove __speed_vl__C