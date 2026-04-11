execute if block ~~~ water if entity @s[tag=moving,scores={speed=110..,__moving__=12..},tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__E
execute if entity @s[tag=__speed_vl__E] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (E) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
execute if entity @s[tag=__speed_vl__E] run scoreboard players add @s Speedvl 1
tag @a[tag=__speed_vl__E] remove __speed_vl__E