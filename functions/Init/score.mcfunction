#存储
scoreboard objectives add AirTick dummy
scoreboard objectives add LiquidTick dummy
scoreboard objectives add __slime__ dummy
scoreboard objectives add __ground__ dummy
scoreboard objectives add __lava__ dummy
scoreboard objectives add __using__ dummy
scoreboard objectives add __moving__ dummy
scoreboard objectives add __Ilava__ dummy
scoreboard objectives add __Iwater__ dummy
scoreboard objectives add __web__ dummy
scoreboard objectives add __speed_tick__ dummy
#VL计数
scoreboard objectives add Flyvl dummy
scoreboard objectives add Speedvl dummy
scoreboard objectives add NoSlowvl dummy
scoreboard objectives add Jumpvl dummy
#其它
scoreboard objectives add attack_evt dummy
scoreboard objectives add attacked_evt dummy
scoreboard objectives add rot_x_s dummy
scoreboard objectives add rot_y_s dummy
scoreboard objectives add body_rot_x_s dummy
scoreboard objectives add body_rot_y_s dummy
#速度计算
scoreboard objectives add speed dummy
scoreboard objectives add xz_speed dummy
scoreboard objectives add speed_x dummy
scoreboard objectives add speed_y dummy
scoreboard objectives add speed_z dummy
################################################
#初始化
scoreboard players add @s AirTick 0
scoreboard players add @s LiquidTick 0
scoreboard players add @s __slime__ 0
scoreboard players add @s __ground__ 0
scoreboard players add @s __lava__ 0
scoreboard players add @s __using__ 0
scoreboard players add @s __moving__ 0
scoreboard players add @s __Ilava__ 0
scoreboard players add @s __Iwater__ 0
scoreboard players add @s __web__ 0
#
scoreboard players add @s Flyvl 0
scoreboard players add @s Speedvl 0
scoreboard players add @s NoSlowvl 0
scoreboard players add @s attack_evt 0
scoreboard players add @s attacked_evt 0
scoreboard players add @s rot_x_s 0
scoreboard players add @s rot_y_s 0
scoreboard players add @s body_rot_x_s 0
scoreboard players add @s body_rot_y_s 0
#
scoreboard players add @s speed 0
scoreboard players add @s xz_speed 0
scoreboard players add @s speed_x 0
scoreboard players add @s speed_y 0
scoreboard players add @s speed_z 0
#检测时计算
scoreboard objectives add __tmp_jumpslow dummy
scoreboard objectives add __tmp_jumpground dummy
scoreboard objectives add __tmp_sprintslow dummy