execute if entity @s[scores={xz_speed=670..,__dead_time__=!1..},tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__C
execute if entity @s[tag=__speed_vl__C] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (C) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__C] Speedvl 1
tag @s[tag=__speed_vl__C] remove __speed_vl__C
