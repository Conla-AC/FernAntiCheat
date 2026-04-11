execute if entity @s[scores={xz_speed=186..},tag=jump,tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__B
execute if entity @s[tag=__speed_vl__B] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (B) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__B] run scoreboard players add @s Speedvl 1
tag @a[tag=__speed_vl__B] remove __speed_vl__B