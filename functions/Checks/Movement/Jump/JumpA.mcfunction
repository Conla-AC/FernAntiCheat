execute if entity @s[tag=jump,scores={speed_y=268..,__Iwater__=!1..},tag=!DEV_OP] run tag @s add __jump_vl__A
execute if entity @s[tag=__jump_vl__A] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (A) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
scoreboard players add @s[tag=__jump_vl__A] Jumpvl 1
tag @s[tag=__jump_vl__A] remove __jump_vl__A
