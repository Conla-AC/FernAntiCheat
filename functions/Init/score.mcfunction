#初始化
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
#vl
scoreboard objectives add Flyvl dummy
scoreboard objectives add Speedvl dummy
scoreboard objectives add NoSlowvl dummy
scoreboard objectives add Jumpvl dummy
#idk
scoreboard objectives add attack_evt dummy
scoreboard objectives add attacked_evt dummy
scoreboard objectives add rot_x_s dummy
scoreboard objectives add rot_y_s dummy
scoreboard objectives add body_rot_x_s dummy
scoreboard objectives add body_rot_y_s dummy
#speed
scoreboard objectives add speed dummy
scoreboard objectives add m_move_spd dummy
scoreboard objectives add xz_speed dummy
scoreboard objectives add speed_x dummy
scoreboard objectives add speed_y dummy
scoreboard objectives add speed_z dummy
################################################
#API Loader
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
scoreboard players add @s m_move_spd 0
scoreboard players add @s xz_speed 0
scoreboard players add @s speed_x 0
scoreboard players add @s speed_y 0
scoreboard players add @s speed_z 0
#内置化补丁
scoreboard objectives add __tmp_jumpslow dummy
scoreboard objectives add __tmp_jumpground dummy
scoreboard objectives add __tmp_sprintslow dummy
#杂七杂八
scoreboard objectives add yaw_prev dummy
scoreboard objectives add pitch_prev dummy
scoreboard objectives add delta_yaw dummy
scoreboard objectives add delta_pitch dummy
scoreboard objectives add turn_rate dummy
scoreboard objectives add m_move_prev dummy
scoreboard objectives add sprint_burst_val dummy
scoreboard objectives add math_const dummy
scoreboard players add @s yaw_prev 0
scoreboard players add @s pitch_prev 0
scoreboard players add @s delta_yaw 0
scoreboard players add @s delta_pitch 0
scoreboard players add @s turn_rate 0
scoreboard players add @s m_move_prev 0
scoreboard players add @s sprint_burst_val 0
scoreboard objectives add yaw_speed_q dummy
scoreboard objectives add yaw_rate_diff dummy
scoreboard players add @s yaw_speed_q 0
scoreboard players add @s yaw_rate_diff 0
scoreboard players add @s __speed_tick__ 0
scoreboard players add @s Jumpvl 0
scoreboard players add @s __tmp_jumpslow 0
scoreboard players add @s __tmp_jumpground 0
scoreboard players add @s __tmp_sprintslow 0
#const value
scoreboard players set const_neg1 math_const -1
#######################################
scoreboard objectives add d0 dummy
scoreboard objectives add d1 dummy
scoreboard objectives add d2 dummy
scoreboard objectives add d3 dummy
scoreboard objectives add mspd_d0 dummy
scoreboard objectives add mspd_d1 dummy
scoreboard objectives add mspd_d2 dummy
scoreboard objectives add mspd_d3 dummy
scoreboard objectives add mspd_d4 dummy
scoreboard objectives add xz_d0 dummy
scoreboard objectives add xz_d1 dummy
scoreboard objectives add xz_d2 dummy
scoreboard objectives add xz_d3 dummy
scoreboard objectives add sx_d0 dummy
scoreboard objectives add sx_d1 dummy
scoreboard objectives add sx_d2 dummy
scoreboard objectives add sx_d3 dummy
scoreboard objectives add sy_d0 dummy
scoreboard objectives add sy_d1 dummy
scoreboard objectives add sy_d2 dummy
scoreboard objectives add sy_d3 dummy
scoreboard objectives add sz_d0 dummy
scoreboard objectives add sz_d1 dummy
scoreboard objectives add sz_d2 dummy
scoreboard objectives add sz_d3 dummy
