scoreboard players add @s[tag=jump,scores={speed_y=..19,__Iwater__=!1..},tag=!DEV_OP,tag=!climbing] __tmp_jumpslow 1
scoreboard players set @s[scores={speed_y=!..19}] __tmp_jumpslow 0
scoreboard players set @s[scores={__Iwater__=1..}] __tmp_jumpslow 0
execute unless block ~~2~ air run scoreboard players set @s __tmp_jumpslow 0
execute if entity @s[scores={__tmp_jumpslow=12..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§7[§bEasyAC§7] "},{"selector":"@s"},{"text":" §3failed §bJump (B) §7(vl:"},{"score":{"name":"@s","objective":"Jumpvl"}},{"text":")"}]}
scoreboard players add @s[scores={__tmp_jumpslow=12..}] Jumpvl 1
scoreboard players set @s[scores={__tmp_jumpslow=12..}] __tmp_jumpslow 0


