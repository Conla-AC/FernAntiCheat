execute if block ~~-1~ minecraft:slime run scoreboard players set @s __slime__ 10
execute unless block ~~-1~ minecraft:slime run scoreboard players remove @s[scores={__slime__=!..0}] __slime__ 1 