execute if entity @s[scores={AirTick=15..,sy_d0=3..,__ground__=7..},tag=!dead,tag=!c_is_onground,tag=!riding,m=!1,tag=!DEV_OP] run tag @s add __fly_vl__D
execute if entity @s[tag=__fly_vl__D] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (D) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
scoreboard players add @s[tag=__fly_vl__D] Flyvl 1
tag @s[tag=__fly_vl__D] remove __fly_vl__D
