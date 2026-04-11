# 当前位置坐标合并（整数，支持负数）
# 前提：
# 1) px_d0..px_d7 / py_d0..py_d7 / pz_d0..pz_d7 已由MoLang控制器写入（绝对值位）
# 2) x_sign / y_sign / z_sign 为玩家自己的符号位（1 或 -1）

# X = (px_d0..px_d7) * x_sign
scoreboard players operation @s pos_x = @s px_d0
scoreboard players operation @s pos_x += @s px_d1
scoreboard players operation @s pos_x += @s px_d2
scoreboard players operation @s pos_x += @s px_d3
scoreboard players operation @s pos_x += @s px_d4
scoreboard players operation @s pos_x += @s px_d5
scoreboard players operation @s pos_x += @s px_d6
scoreboard players operation @s pos_x += @s px_d7
scoreboard players operation @s pos_x *= @s x_sign

# Y = (py_d0..py_d7) * y_sign
scoreboard players operation @s pos_y = @s py_d0
scoreboard players operation @s pos_y += @s py_d1
scoreboard players operation @s pos_y += @s py_d2
scoreboard players operation @s pos_y += @s py_d3
scoreboard players operation @s pos_y += @s py_d4
scoreboard players operation @s pos_y += @s py_d5
scoreboard players operation @s pos_y += @s py_d6
scoreboard players operation @s pos_y += @s py_d7
scoreboard players operation @s pos_y *= @s y_sign

# Z = (pz_d0..pz_d7) * z_sign
scoreboard players operation @s pos_z = @s pz_d0
scoreboard players operation @s pos_z += @s pz_d1
scoreboard players operation @s pos_z += @s pz_d2
scoreboard players operation @s pos_z += @s pz_d3
scoreboard players operation @s pos_z += @s pz_d4
scoreboard players operation @s pos_z += @s pz_d5
scoreboard players operation @s pos_z += @s pz_d6
scoreboard players operation @s pos_z += @s pz_d7
scoreboard players operation @s pos_z *= @s z_sign

# 微软世界坐标最大值：30000000，做边界限制
execute if score @s pos_x matches 30000001.. run scoreboard players set @s pos_x 30000000
execute if score @s pos_x matches ..-30000001 run scoreboard players set @s pos_x -30000000

execute if score @s pos_y matches 30000001.. run scoreboard players set @s pos_y 30000000
execute if score @s pos_y matches ..-30000001 run scoreboard players set @s pos_y -30000000

execute if score @s pos_z matches 30000001.. run scoreboard players set @s pos_z 30000000
execute if score @s pos_z matches ..-30000001 run scoreboard players set @s pos_z -30000000
