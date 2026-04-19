execute if entity @s[scores={LiquidTick=13..},tag=!dead,tag=!falling,tag=!moving,tag=!riding,m=!1,tag=!DEV_OP] run tag @s add __fly_vl__F
execute if entity @s[tag=__fly_vl__F] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (F) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
scoreboard players add @s[tag=__fly_vl__F] Flyvl 1
tag @s[tag=__fly_vl__F] remove __fly_vl__F
