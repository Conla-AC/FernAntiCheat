execute if entity @s[scores={speed=12..,__dead_time__=!1..,__web__=5..},tag=!dead,tag=!DEV_OP] if block ~~~ web run tag @s add __speed_vl__H
execute if entity @s[tag=__speed_vl__H] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (H) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__H] Speedvl 1
tag @s[tag=__speed_vl__H] remove __speed_vl__H