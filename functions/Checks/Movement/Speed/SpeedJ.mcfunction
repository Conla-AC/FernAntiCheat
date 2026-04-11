execute if entity @s[scores={speed=169..},tag=!falling,tag=!dead,tag=!DEV_OP] if block ~~~ web run tag @s add __speed_vl__J
execute if entity @s[tag=__speed_vl__J] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (J) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__J] run scoreboard players add @s Speedvl 1
tag @a[tag=__speed_vl__J] remove __speed_vl__J