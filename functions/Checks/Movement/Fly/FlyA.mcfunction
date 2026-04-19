execute if entity @s[scores={AirTick=29..},tag=!falling,tag=!jump,tag=moving,tag=!riding,m=!1,tag=!dead,tag=!DEV_OP] run tag @s add __fly_vl__A
execute if entity @s[tag=__fly_vl__A] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (A) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
scoreboard players add @s[tag=__fly_vl__A] Flyvl 1
tag @s[tag=__fly_vl__A] remove __fly_vl__A
