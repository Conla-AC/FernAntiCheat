# XYZ坐标（整数坐标，范围限制到 ±30000000）
# 输入位（由MoLang控制器写入）：px_d0..px_d7 / py_d0..py_d7 / pz_d0..pz_d7
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy

scoreboard objectives add px_d0 dummy
scoreboard objectives add px_d1 dummy
scoreboard objectives add px_d2 dummy
scoreboard objectives add px_d3 dummy
scoreboard objectives add px_d4 dummy
scoreboard objectives add px_d5 dummy
scoreboard objectives add px_d6 dummy
scoreboard objectives add px_d7 dummy

scoreboard objectives add py_d0 dummy
scoreboard objectives add py_d1 dummy
scoreboard objectives add py_d2 dummy
scoreboard objectives add py_d3 dummy
scoreboard objectives add py_d4 dummy
scoreboard objectives add py_d5 dummy
scoreboard objectives add py_d6 dummy
scoreboard objectives add py_d7 dummy

scoreboard objectives add pz_d0 dummy
scoreboard objectives add pz_d1 dummy
scoreboard objectives add pz_d2 dummy
scoreboard objectives add pz_d3 dummy
scoreboard objectives add pz_d4 dummy
scoreboard objectives add pz_d5 dummy
scoreboard objectives add pz_d6 dummy
scoreboard objectives add pz_d7 dummy

scoreboard objectives add x_sign dummy
scoreboard objectives add y_sign dummy
scoreboard objectives add z_sign dummy

scoreboard players add @s pos_x 0
scoreboard players add @s pos_y 0
scoreboard players add @s pos_z 0
scoreboard players set @s x_sign 1
scoreboard players set @s y_sign 1
scoreboard players set @s z_sign 1
