execute if entity @s[scores={AirTick=30..},tag=!dead,tag=!falling,tag=!moving,tag=!riding,tag=!dead,tag=!DEV_OP,m=!1] run tag @s add __fly_vl__C
execute if entity @s[tag=__fly_vl__C] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (C) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
scoreboard players add @s[tag=__fly_vl__C] Flyvl 1
tag @s[tag=__fly_vl__C] remove __fly_vl__C
