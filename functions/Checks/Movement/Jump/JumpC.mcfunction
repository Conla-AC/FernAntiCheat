execute if entity @s[tag=jump,tag=ground,tag=!DEV_OP] if block ~~2~ air run scoreboard players add @s __tmp_jumpground 1
#地面有点问题 只能这么修复了。
execute unless entity @s[tag=jump,tag=ground] run scoreboard players set @s __tmp_jumpground 0
execute unless block ~~2~ air  run scoreboard players set @s __tmp_jumpground 0
execute if entity @s[scores={__tmp_jumpground=6..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (C) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
execute if entity @s[scores={__tmp_jumpground=6..}] run scoreboard players add @s Jumpvl 1
scoreboard players set @s[scores={__tmp_jumpground=6..}] __tmp_jumpground 0