tag @a remove c_is_onair
execute if block ~ ~-1 ~ air if block ~0.25 ~-1 ~0.25 air if block ~-0.25~-1~-0.25 air if block ~~-1~0.25 air if block ~~-1~-0.25 air if block ~0.25~-1~ air if block ~-0.25~-1~ air run tag @s add c_is_onair
#
tag @a remove c_is_inair
execute if block ~ ~ ~ air if block ~0.25 ~ ~0.25 air if block ~-0.25~~-0.25 air if block ~~~0.25 air if block ~~~-0.25 air if block ~0.25~~ air if block ~-0.25~~ air run tag @s add c_is_inair
#
tag @a remove c_is_underair
execute if block ~ ~1 ~ air if block ~0.25 ~1 ~0.25 air if block ~-0.25~1~-0.25 air if block ~~1~0.25 air if block ~~1~-0.25 air if block ~0.25~1~ air if block ~-0.25~1~ air run tag @s add c_is_underair
#air is do
tag @a remove is_air_is
execute if block ~~-1~ air if block ~~-2~ air if block ~~-3~ air run tag @s add is_air_is