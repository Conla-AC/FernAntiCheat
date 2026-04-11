execute if entity @s[tag=rising,scores={speed_y=280..9999},tag=c_is_inair,tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__D
execute if entity @s[tag=__speed_vl__D] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (D) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__D] run scoreboard players add @s Speedvl 1
tag @a[tag=__speed_vl__D] remove __speed_vl__D