tag @a remove is_starding
tag @a remove c_sneaking
tag @a remove c_swimming
execute if entity @s[x=~,y=~1.7,z=~,dx=0,dy=0,dz=0] run tag @s add is_starding
execute if entity @s[x=~,y=~1.4,z=~,dx=0,dy=0,dz=0] unless entity @s[x=~,y=~1.7,z=~,dx=0,dy=0,dz=0] run tag @s add c_sneaking
execute unless entity @s[x=~,y=~1.4,z=~,dx=0,dy=0,dz=0] run tag @s add c_swimming

# climbing detect (mcfunction) 
tag @s remove climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ ladder run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ vine run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ scaffolding run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ twisting_vines run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ weeping_vines run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ cave_vines run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ cave_vines_body_with_berries run tag @s add climbing
execute unless entity @s[tag=ground] if entity @s[tag=moving] if block ~~~ minecraft:cave_vines_head_with_berries run tag @s add climbing
