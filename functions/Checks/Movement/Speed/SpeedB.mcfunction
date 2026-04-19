execute if entity @s[scores={xz_speed=186..,__dead_time__=!1..},tag=jump,tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__B
execute if entity @s[tag=__speed_vl__B] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (B) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__B] Speedvl 1
tag @s[tag=__speed_vl__B] remove __speed_vl__B
