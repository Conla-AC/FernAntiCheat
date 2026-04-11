execute if entity @s[tag=jump,scores={AirTick=15..,__jump__=!2..},m=!1,tag=!dead,tag=!DEV_OP] run tag @s add __fly_vl__G
execute if entity @s[tag=__fly_vl__G] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (G) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
execute if entity @s[tag=__fly_vl__G] run scoreboard players add @s Flyvl 1
execute if entity @s[tag=__fly_vl__G] run tag @s remove __fly_vl__G