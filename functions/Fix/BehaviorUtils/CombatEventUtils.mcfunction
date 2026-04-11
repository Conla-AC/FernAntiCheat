scoreboard players remove @s[scores={attack_evt=1..}] attack_evt 1
execute if entity @s[scores={attack_evt=1..}] run tag @s add attack_evt
execute if entity @s[scores={attack_evt=..0}] run tag @s remove attack_evt

scoreboard players remove @s[scores={attacked_evt=1..}] attacked_evt 1
execute if entity @s[scores={attacked_evt=1..}] run tag @s add attacked_evt
execute if entity @s[scores={attacked_evt=..0}] run tag @s remove attacked_evt
