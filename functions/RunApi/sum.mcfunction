# 3D鎬婚€熷害 (xyz)
scoreboard players operation @s speed = @s d0
scoreboard players operation @s speed += @s d1
scoreboard players operation @s speed += @s d2
scoreboard players operation @s speed += @s d3

# m_move_spd (x100, format=iii.ff)
scoreboard players operation @s m_move_spd = @s mspd_d0
scoreboard players operation @s m_move_spd += @s mspd_d1
scoreboard players operation @s m_move_spd += @s mspd_d2
scoreboard players operation @s m_move_spd += @s mspd_d3
scoreboard players operation @s m_move_spd += @s mspd_d4

# XZ骞抽潰閫熷害
scoreboard players operation @s xz_speed = @s xz_d0
scoreboard players operation @s xz_speed += @s xz_d1
scoreboard players operation @s xz_speed += @s xz_d2
scoreboard players operation @s xz_speed += @s xz_d3

# X杞撮€熷害
scoreboard players operation @s speed_x = @s sx_d0
scoreboard players operation @s speed_x += @s sx_d1
scoreboard players operation @s speed_x += @s sx_d2
scoreboard players operation @s speed_x += @s sx_d3

# Y杞撮€熷害
scoreboard players operation @s speed_y = @s sy_d0
scoreboard players operation @s speed_y += @s sy_d1
scoreboard players operation @s speed_y += @s sy_d2
scoreboard players operation @s speed_y += @s sy_d3

# Z杞撮€熷害
scoreboard players operation @s speed_z = @s sz_d0
scoreboard players operation @s speed_z += @s sz_d1
scoreboard players operation @s speed_z += @s sz_d2
scoreboard players operation @s speed_z += @s sz_d3

# acceleration
scoreboard players operation @s accel_2d = @s xz_speed
scoreboard players operation @s accel_2d -= @s xz_prev
scoreboard players operation @s accel_3d = @s speed
scoreboard players operation @s accel_3d -= @s speed_prev

# hard stop strength (only decel kept)
scoreboard players operation @s stop_hard = @s xz_prev
scoreboard players operation @s stop_hard -= @s xz_speed
execute if score @s stop_hard matches ..-1 run scoreboard players set @s stop_hard 0

# decel ratio (%) = stop_hard * 100 / (xz_prev + 1)
scoreboard players operation @s decel_ratio = @s stop_hard
scoreboard players operation @s decel_ratio *= const_100 math_const
scoreboard players operation @s decel_den = @s xz_prev
scoreboard players add @s decel_den 1
execute if score @s decel_den matches 1.. run scoreboard players operation @s decel_ratio /= @s decel_den

# turn per speed (%) = turn_rate * 100 / (xz_speed + 1)
scoreboard players operation @s turn_per_speed = @s turn_rate
scoreboard players operation @s turn_per_speed *= const_100 math_const
scoreboard players operation @s tps_den = @s xz_speed
scoreboard players add @s tps_den 1
execute if score @s tps_den matches 1.. run scoreboard players operation @s turn_per_speed /= @s tps_den

# turn acceleration = abs(turn_rate - turn_rate_prev)
scoreboard players operation @s turn_accel = @s turn_rate
scoreboard players operation @s turn_accel -= @s turn_rate_prev
execute if score @s turn_accel matches ..-1 run scoreboard players operation @s turn_accel *= const_neg1 math_const

# speed oscillation = abs(xz_speed - xz_prev)
scoreboard players operation @s speed_osc = @s xz_speed
scoreboard players operation @s speed_osc -= @s xz_prev
execute if score @s speed_osc matches ..-1 run scoreboard players operation @s speed_osc *= const_neg1 math_const

# vertical bias (%) = abs(speed_y) * 100 / (speed + 1)
scoreboard players operation @s vb_num = @s speed_y
execute if score @s vb_num matches ..-1 run scoreboard players operation @s vb_num *= const_neg1 math_const
scoreboard players operation @s vb_num *= const_100 math_const
scoreboard players operation @s vb_den = @s speed
scoreboard players add @s vb_den 1
scoreboard players operation @s vertical_bias = @s vb_num
execute if score @s vb_den matches 1.. run scoreboard players operation @s vertical_bias /= @s vb_den

# momentum approximations
scoreboard players operation @s momentum_2d = @s xz_speed
scoreboard players operation @s momentum_2d *= @s m_move_spd
scoreboard players operation @s momentum_2d /= const_100 math_const
scoreboard players operation @s momentum_3d = @s speed
scoreboard players operation @s momentum_3d *= @s m_move_spd
scoreboard players operation @s momentum_3d /= const_100 math_const

# impact_risk = fall_distance_s * (abs(speed_y) + 1)
scoreboard players operation @s impact_abs_sy = @s speed_y
execute if score @s impact_abs_sy matches ..-1 run scoreboard players operation @s impact_abs_sy *= const_neg1 math_const
scoreboard players add @s impact_abs_sy 1
scoreboard players operation @s impact_risk = @s fall_distance_s
scoreboard players operation @s impact_risk *= @s impact_abs_sy

# landing_shock = max(0, speed_y - speed_y_prev)
scoreboard players operation @s landing_shock = @s speed_y
scoreboard players operation @s landing_shock -= @s speed_y_prev
execute if score @s landing_shock matches ..-1 run scoreboard players set @s landing_shock 0

# vertical_control = abs(delta_yaw) * abs(speed_y)
scoreboard players operation @s vc_abs_dyaw = @s delta_yaw
execute if score @s vc_abs_dyaw matches ..-1 run scoreboard players operation @s vc_abs_dyaw *= const_neg1 math_const
scoreboard players operation @s vc_abs_sy = @s speed_y
execute if score @s vc_abs_sy matches ..-1 run scoreboard players operation @s vc_abs_sy *= const_neg1 math_const
scoreboard players operation @s vertical_control = @s vc_abs_dyaw
scoreboard players operation @s vertical_control *= @s vc_abs_sy

# strafe_ratio = abs(speed_x) * 100 / (abs(speed_z) + 1)
scoreboard players operation @s sr_num = @s speed_x
execute if score @s sr_num matches ..-1 run scoreboard players operation @s sr_num *= const_neg1 math_const
scoreboard players operation @s sr_num *= const_100 math_const
scoreboard players operation @s sr_den = @s speed_z
execute if score @s sr_den matches ..-1 run scoreboard players operation @s sr_den *= const_neg1 math_const
scoreboard players add @s sr_den 1
scoreboard players operation @s strafe_ratio = @s sr_num
execute if score @s sr_den matches 1.. run scoreboard players operation @s strafe_ratio /= @s sr_den

# jerk_2d
scoreboard players operation @s jerk_2d = @s accel_2d
scoreboard players operation @s jerk_2d -= @s accel_2d_prev
execute if score @s jerk_2d matches ..-1 run scoreboard players operation @s jerk_2d *= const_neg1 math_const

# path_jitter = abs(accel_2d) + abs(jerk_2d)
scoreboard players operation @s path_jitter = @s accel_2d
execute if score @s path_jitter matches ..-1 run scoreboard players operation @s path_jitter *= const_neg1 math_const
scoreboard players operation @s path_jitter += @s jerk_2d

# stop_to_turn = stop_hard * (turn_rate + 1)
scoreboard players operation @s stop_to_turn = @s stop_hard
scoreboard players operation @s tps_den = @s turn_rate
execute if score @s tps_den matches ..-1 run scoreboard players operation @s tps_den *= const_neg1 math_const
scoreboard players add @s tps_den 1
scoreboard players operation @s stop_to_turn *= @s tps_den

# motion energy = xz_speed^2 + speed_y^2
scoreboard players operation @s me_xz_sq = @s xz_speed
scoreboard players operation @s me_xz_sq *= @s xz_speed
scoreboard players operation @s me_y_sq = @s speed_y
scoreboard players operation @s me_y_sq *= @s speed_y
scoreboard players operation @s motion_energy = @s me_xz_sq
scoreboard players operation @s motion_energy += @s me_y_sq

# movement_efficiency = xz_speed * 100 / (motion_energy + 1)
scoreboard players operation @s movement_efficiency = @s xz_speed
scoreboard players operation @s movement_efficiency *= const_100 math_const
scoreboard players operation @s me_den = @s motion_energy
scoreboard players add @s me_den 1
execute if score @s me_den matches 1.. run scoreboard players operation @s movement_efficiency /= @s me_den
# update prev
scoreboard players operation @s xz_prev = @s xz_speed
scoreboard players operation @s speed_prev = @s speed
scoreboard players operation @s accel_2d_prev = @s accel_2d
scoreboard players operation @s turn_rate_prev = @s turn_rate
scoreboard players operation @s speed_y_prev = @s speed_y
