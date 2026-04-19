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
scoreboard objectives add __dead_time__ dummy
#vl
scoreboard objectives add Flyvl dummy
scoreboard objectives add Speedvl dummy
scoreboard objectives add NoSlowvl dummy
scoreboard objectives add Jumpvl dummy
scoreboard objectives add Climbvl dummy
#idk
scoreboard objectives add attack_evt dummy
scoreboard objectives add attacked_evt dummy
scoreboard objectives add rot_x_s dummy
scoreboard objectives add rot_y_s dummy
scoreboard objectives add body_rot_x_s dummy
scoreboard objectives add body_rot_y_s dummy
scoreboard objectives add sleep_rot_s dummy
#speed
scoreboard objectives add speed dummy
scoreboard objectives add m_move_spd dummy
scoreboard objectives add xz_speed dummy
scoreboard objectives add speed_x dummy
scoreboard objectives add speed_y dummy
scoreboard objectives add speed_z dummy
scoreboard objectives add fall_distance_s dummy
scoreboard objectives add fall_prev_y dummy
scoreboard objectives add fall_delta dummy
scoreboard objectives add fall_step dummy
scoreboard objectives add client_mem_tier dummy
scoreboard objectives add server_mem_tier dummy
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
scoreboard players add @s __dead_time__ 0
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
scoreboard players add @s sleep_rot_s 0
#
scoreboard players add @s speed 0
scoreboard players add @s m_move_spd 0
scoreboard players add @s xz_speed 0
scoreboard players add @s speed_x 0
scoreboard players add @s speed_y 0
scoreboard players add @s speed_z 0
scoreboard players add @s fall_distance_s 0
scoreboard players add @s fall_prev_y 0
scoreboard players add @s fall_delta 0
scoreboard players add @s fall_step 0
scoreboard players add @s client_mem_tier 0
scoreboard players add @s server_mem_tier 0
#内置化补丁
scoreboard objectives add __tmp_jumpslow dummy
scoreboard objectives add __tmp_jumpground dummy
scoreboard objectives add __tmp_sprintslow dummy
scoreboard objectives add __tmp_fly_isrising dummy
scoreboard objectives add __tmp_fly_isfalling dummy
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
scoreboard objectives add xz_prev dummy
scoreboard objectives add speed_prev dummy
scoreboard objectives add accel_2d dummy
scoreboard objectives add accel_3d dummy
scoreboard players add @s xz_prev 0
scoreboard players add @s speed_prev 0
scoreboard players add @s accel_2d 0
scoreboard players add @s accel_3d 0
scoreboard objectives add accel_2d_prev dummy
scoreboard objectives add jerk_2d dummy
scoreboard objectives add stop_hard dummy
scoreboard objectives add turn_rate_prev dummy
scoreboard objectives add turn_accel dummy
scoreboard objectives add speed_osc dummy
scoreboard objectives add vertical_bias dummy
scoreboard objectives add vb_num dummy
scoreboard objectives add vb_den dummy
scoreboard objectives add momentum_2d dummy
scoreboard objectives add momentum_3d dummy
scoreboard objectives add turn_per_speed dummy
scoreboard objectives add tps_den dummy
scoreboard objectives add decel_ratio dummy
scoreboard objectives add decel_den dummy
scoreboard objectives add motion_energy dummy
scoreboard objectives add me_xz_sq dummy
scoreboard objectives add me_y_sq dummy
scoreboard objectives add speed_y_prev dummy
scoreboard objectives add impact_risk dummy
scoreboard objectives add impact_abs_sy dummy
scoreboard objectives add landing_shock dummy
scoreboard objectives add vertical_control dummy
scoreboard objectives add vc_abs_dyaw dummy
scoreboard objectives add vc_abs_sy dummy
scoreboard objectives add strafe_ratio dummy
scoreboard objectives add sr_num dummy
scoreboard objectives add sr_den dummy
scoreboard objectives add path_jitter dummy
scoreboard objectives add stop_to_turn dummy
scoreboard objectives add movement_efficiency dummy
scoreboard objectives add me_den dummy
scoreboard players add @s accel_2d_prev 0
scoreboard players add @s jerk_2d 0
scoreboard players add @s stop_hard 0
scoreboard players add @s turn_rate_prev 0
scoreboard players add @s turn_accel 0
scoreboard players add @s speed_osc 0
scoreboard players add @s vertical_bias 0
scoreboard players add @s vb_num 0
scoreboard players add @s vb_den 0
scoreboard players add @s momentum_2d 0
scoreboard players add @s momentum_3d 0
scoreboard players add @s turn_per_speed 0
scoreboard players add @s tps_den 0
scoreboard players add @s decel_ratio 0
scoreboard players add @s decel_den 0
scoreboard players add @s motion_energy 0
scoreboard players add @s me_xz_sq 0
scoreboard players add @s me_y_sq 0
scoreboard players add @s speed_y_prev 0
scoreboard players add @s impact_risk 0
scoreboard players add @s impact_abs_sy 0
scoreboard players add @s landing_shock 0
scoreboard players add @s vertical_control 0
scoreboard players add @s vc_abs_dyaw 0
scoreboard players add @s vc_abs_sy 0
scoreboard players add @s strafe_ratio 0
scoreboard players add @s sr_num 0
scoreboard players add @s sr_den 0
scoreboard players add @s path_jitter 0
scoreboard players add @s stop_to_turn 0
scoreboard players add @s movement_efficiency 0
scoreboard players add @s me_den 0
#Math Const
scoreboard players set const_100 math_const 100
scoreboard players set abs math_const -1

#Molang Scire
scoreboard objectives add hitJ dummy
scoreboard objectives add killJ dummy
scoreboard objectives add health dummy
