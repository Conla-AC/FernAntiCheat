scoreboard players remove @s[scores={attack_evt=1..}] attack_evt 1
tag @s[scores={attack_evt=1..}] add attack_evt
tag @s[scores={attack_evt=..0}] remove attack_evt

scoreboard players remove @s[scores={attacked_evt=1..}] attacked_evt 1
tag @s[scores={attacked_evt=1..}] add attacked_evt
tag @s[scores={attacked_evt=..0}] remove attacked_evt
