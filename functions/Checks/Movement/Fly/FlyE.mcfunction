execute if entity @s[scores={LiquidTick=13..},tag=!dead,tag=!falling,tag=moving,tag=!riding,m=!1,tag=!DEV_OP] run tag @s add __fly_vl__E
execute if entity @s[tag=__fly_vl__E] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (E) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
execute if entity @s[tag=__fly_vl__E] run scoreboard players add @s Flyvl 1
tag @a[tag=__fly_vl__E] remove __fly_vl__E