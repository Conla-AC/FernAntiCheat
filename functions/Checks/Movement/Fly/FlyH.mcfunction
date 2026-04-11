execute as @a at @s unless entity @e[r=1.25,type=!player,type=!item,tag=!DEV_OP] anchored feet if entity @s[x=~-10,y=~2.16210001,z=~-10,dx=1000,dy=1000,dz=1000] unless entity @s[x=~-10,y=~2.178,z=~-10,dx=1000,dy=1000,dz=1000] run tag @s add __fly_vl__H
execute if entity @s[tag=__fly_vl__H] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (H) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
execute if entity @s[tag=__fly_vl__H] run scoreboard players add @s Flyvl 1
tag @a[tag=__fly_vl__H] remove __fly_vl__H