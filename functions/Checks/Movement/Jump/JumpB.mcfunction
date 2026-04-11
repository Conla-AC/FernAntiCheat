execute if entity @s[tag=jump,scores={speed_y=..19},tag=!DEV_OP] run scoreboard players add @s __tmp_jumpslow 1
execute unless entity @s[scores={speed_y=..19}] run scoreboard players set @s __tmp_jumpslow 0
execute unless block ~~2~ air run scoreboard players set @s __tmp_jumpslow 0
execute if entity @s[scores={__tmp_jumpslow=12..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (B) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
execute if entity @s[scores={__tmp_jumpslow=12..}] run scoreboard players add @s Jumpvl 1
scoreboard players set @s[scores={__tmp_jumpslow=12..}] __tmp_jumpslow 0