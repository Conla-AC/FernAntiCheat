execute if block ~~~ lava if entity @s[tag=moving,scores={speed=80..,__dead_time__=!1..,__Iwater__=4..},tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__F
execute if entity @s[tag=__speed_vl__F] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (F) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__F] Speedvl 1
tag @s[tag=__speed_vl__F] remove __speed_vl__F
