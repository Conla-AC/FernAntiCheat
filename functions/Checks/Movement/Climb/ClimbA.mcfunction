tag @s[scores={speed_y=77..},tag=rising,tag=climbing] add __climb_vl__A
execute if entity @s[tag=__climb_vl__A] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bClimb (A) §7(vl:"},{"score":{"name":"@s","objective":"Climbvl"}},{"text":")"}]}
scoreboard players add @s[tag=__climb_vl__A] Climbvl 1
tag @s[tag=__climb_vl__A] remove __climb_vl__A
