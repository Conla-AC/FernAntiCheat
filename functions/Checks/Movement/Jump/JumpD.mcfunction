execute if entity @s[tag=jump,tag=!DEV_OP,scores={speed_y=48..,__Iwater__=28..}] if block ~~~ water run tag @s add __jump_vl__D
execute if entity @s[tag=__jump_vl__D] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (D) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
scoreboard players add @s[tag=__jump_vl__D] Jumpvl 1
tag @s[tag=__jump_vl__D] remove __jump_vl__D