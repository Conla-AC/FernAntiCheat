tag @a remove is_starding
tag @a remove c_sneaking
tag @a remove c_swimming
execute if entity @s[x=~,y=~1.7,z=~,dx=0,dy=0,dz=0] run tag @s add is_starding
execute if entity @s[x=~,y=~1.4,z=~,dx=0,dy=0,dz=0] unless entity @s[x=~,y=~1.7,z=~,dx=0,dy=0,dz=0] run tag @s add c_sneaking
execute unless entity @s[x=~,y=~1.4,z=~,dx=0,dy=0,dz=0] run tag @s add c_swimming