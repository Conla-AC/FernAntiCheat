#Limit (Y_speed) = 75
#except : jump_boost effect
#Skid from VulcanAC
execute if entity @s[scores={speed_y=77..,__slime__=!1..,__falling__=!1..},tag=!falling,tag=!effect_jump_boost,tag=jump] run tag @s add __jump_vl__F
execute if entity @s[tag=__jump_vl__F] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (F) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
scoreboard players add @s[tag=__jump_vl__F] Jumpvl 1
tag @s[tag=__jump_vl__F] remove __jump_vl__F