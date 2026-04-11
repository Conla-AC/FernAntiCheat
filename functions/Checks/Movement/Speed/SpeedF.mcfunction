execute if block ~~~ lava if entity @s[tag=moving,scores={speed=80..,__Iwater__=4..},tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__F
execute if entity @s[tag=__speed_vl__F] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (F) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__F] run scoreboard players add @s Speedvl 1
tag @a[tag=__speed_vl__F] remove __speed_vl__F