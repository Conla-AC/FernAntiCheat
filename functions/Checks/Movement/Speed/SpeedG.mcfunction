execute if block ~~~ lava if entity @s[tag=moving,scores={speed=81..,__dead_time__=!1..,__Ilava__=4..},tag=!dead,tag=!DEV_OP] run tag @s add __speed_vl__G
execute if entity @s[tag=__speed_vl__G] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bSpeed (G) §7(vl:"},{"score":{"name":"@s","objective":"Speedvl"}},{"text":")"}]}
scoreboard players add @s[tag=__speed_vl__G] Speedvl 1
tag @s[tag=__speed_vl__G] remove __speed_vl__G
