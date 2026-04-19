execute if entity @s[tag=jump,tag=ground,tag=!DEV_OP,scores={__Iwater__=!1..}] if block ~~2~ air run scoreboard players add @s __tmp_jumpground 1
#鍦伴潰鏈夌偣闂 鍙兘杩欎箞淇浜嗐€?
scoreboard players set @s[tag=!jump] __tmp_jumpground 0
scoreboard players set @s[tag=!ground] __tmp_jumpground 0
execute unless block ~~2~ air  run scoreboard players set @s __tmp_jumpground 0
execute if entity @s[scores={__tmp_jumpground=6..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (C) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
scoreboard players add @s[scores={__tmp_jumpground=6..}] Jumpvl 1
scoreboard players set @s[scores={__tmp_jumpground=6..}] __tmp_jumpground 0


