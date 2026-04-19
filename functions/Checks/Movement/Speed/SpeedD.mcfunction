execute if entity @s[tag=rising,scores={speed_y=280..9999,__dead_time__=!1..},tag=c_is_inair,tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__D
execute if entity @s[tag=__speed_vl__D] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (D) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__D] Speedvl 1
tag @s[tag=__speed_vl__D] remove __speed_vl__D
