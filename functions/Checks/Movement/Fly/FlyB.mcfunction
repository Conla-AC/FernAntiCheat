execute if entity @s[scores={AirTick=15..,__slime__=!1..},tag=rising,m=!1,tag=!dead,tag=!DEV_OP] run tag @s add __fly_vl__B
execute if entity @s[tag=__fly_vl__B] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (B) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
execute if entity @s[tag=__fly_vl__B] run scoreboard players add @s Flyvl 1
tag @a[tag=__fly_vl__B] remove __fly_vl__B