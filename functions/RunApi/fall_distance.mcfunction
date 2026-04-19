# mcfunction fallback for fall distance (no query.fall_distance).
# accumulate only when Y decreases and player is not on ground.

scoreboard players operation @s fall_delta = @s fall_prev_y
scoreboard players operation @s fall_delta -= @s pos_y

scoreboard players operation @s fall_step = @s fall_delta
scoreboard players set @s[scores={fall_delta=..0}] fall_step 0
scoreboard players set @s[tag=c_is_onground] fall_step 0

scoreboard players operation @s fall_distance_s += @s fall_step
scoreboard players set @s[tag=c_is_onground] fall_distance_s 0

# safety clamp
execute if score @s fall_distance_s matches 1000000.. run scoreboard players set @s fall_distance_s 1000000

scoreboard players operation @s fall_prev_y = @s pos_y
