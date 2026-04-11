#LiquidTick 用于检测玩家在液体中的时间 
execute if block ~~-1~ water run scoreboard players add @s[tag=!ground] LiquidTick 1
execute unless block ~~-1~ water run scoreboard players set @s LiquidTick 0
execute if block ~~~ water run scoreboard players set @s LiquidTick 1
#Lava 类液体
execute if block ~~-1~ lava run scoreboard players add @s[tag=!ground] __lava__ 1
execute unless block ~~-1~ lava run scoreboard players set @s __lava__ 0
execute if block ~~~ lava run scoreboard players set @s __lava__ 1

#Water Lava 类液体 ~~~ 非 ~~-1~
#一般都是前缀都加了个I 即 __Ilava__ __Iwater__
execute if block ~~~ water run scoreboard players add @s __Iwater__ 1
execute if block ~~~ lava run scoreboard players add @s __Ilava__ 1
#unless
execute unless block ~~~ water run scoreboard players set @s __Iwater__ 0
execute unless block ~~~ lava run scoreboard players set @s __Ilava__ 0