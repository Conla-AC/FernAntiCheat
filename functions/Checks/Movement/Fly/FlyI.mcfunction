scoreboard players add @s[scores={accel_3d=91..}] __tmp_fly_isrising 1
scoreboard players add @s[scores={accel_3d=..-78}] __tmp_fly_isfalling 1
#Flag
execute if entity @s[scores={__tmp_fly_isrising=2..,__tmp_fly_isfalling=2..,speed_y=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bFly (I) §7(vl:"},{"score":{"name":"@s","objective":"Flyvl"}},{"text":")"}]}
scoreboard players add @s[scores={__tmp_fly_isrising=2..,__tmp_fly_isfalling=2..,speed_y=1..}] Flyvl 1
#reset flag
scoreboard players set @s[scores={__tmp_fly_isrising=2..,__tmp_fly_isfalling=2..}] __tmp_fly_isrising 0
scoreboard players set @s[scores={__tmp_fly_isrising=2..,__tmp_fly_isfalling=2..}] __tmp_fly_isfalling 0