#__air__ 用于飞行检测空中
scoreboard players add @s[tag=!c_is_onground,tag=!falling] AirTick 1
scoreboard players set @s[tag=c_is_onground,tag=!falling] AirTick 0
#__ground__ 用于检测地面
scoreboard players add @s[tag=c_is_onground] __ground__ 1
scoreboard players set @s[tag=!c_is_onground] __ground__ 0
