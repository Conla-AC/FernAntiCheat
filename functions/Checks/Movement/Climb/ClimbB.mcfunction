tag @s[scores={speed_y=83..},tag=falling,tag=climbing] add __climb_vl__B
execute if entity @s[tag=__climb_vl__B] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bClimb (B) §7(vl:"},{"score":{"name":"@s","objective":"Climbvl"}},{"text":")"}]}
scoreboard players add @s[tag=__climb_vl__B] Climbvl 1
tag @s[tag=__climb_vl__B] remove __climb_vl__B
