execute if entity @s[tag=jump,tag=!DEV_OP,scores={speed_y=48..,__Ilava__=25..}] if block ~~~ water run tag @s add __jump_vl__E
execute if entity @s[tag=__jump_vl__E] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (E) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
scoreboard players add @s[tag=__jump_vl__E] Jumpvl 1
tag @s[tag=__jump_vl__E] remove __jump_vl__E