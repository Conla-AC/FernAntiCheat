tag @s add c_is_onground
execute if blocks ~0.295 310~0.295 ~-0.295 309.9~-0.295 ~-0.295~-0.01~-0.295 all run tag @s remove c_is_onground
#
tag @s remove c_is_inground
execute unless block ~ ~ ~ air run tag @s add c_is_inground
#
tag @s remove c_is_underground
execute unless block ~ ~1 ~ air run tag @s add c_is_underground
