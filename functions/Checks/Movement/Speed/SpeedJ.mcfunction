execute if entity @s[scores={speed=169..,__dead_time__=!1..},tag=!falling,tag=!dead,tag=!DEV_OP] if block ~~~ web run tag @s add __speed_vl__J
execute if entity @s[tag=__speed_vl__J] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (J) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__J] Speedvl 1
tag @s[tag=__speed_vl__J] remove __speed_vl__J
