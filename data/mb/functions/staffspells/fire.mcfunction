execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=fire,tag=!defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ~ ~-1 ~ ~ ~ ~ fire replace air
execute at @e[tag=!invert,tag=fire,tag=spell,scores={Life=..35},tag=!defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~ ~-1 ~ ~ ~ ~ fire replace air
execute at @e[tag=!invert,tag=fire,tag=spell,scores={Life=..35},tag=!defense,tag=aoe] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 fire replace air
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=fire,tag=defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ^-3 ^-1 ^ ^3 ^ ^ fire replace air
execute at @e[tag=!invert,tag=fire,tag=spell,scores={Life=..35},tag=defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0,type=!player] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ^-3 ^-1 ^ ^3 ^ ^ fire replace air

execute as @s[tag=invert,tag=spell,tag=done,tag=!offense,tag=fire,tag=!defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ~ ~-1 ~ ~ ~ ~ water replace air
execute at @e[tag=invert,tag=fire,tag=spell,scores={Life=..35},tag=!defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~ ~-1 ~ ~ ~ ~ water replace air
execute at @e[tag=invert,tag=fire,tag=spell,scores={Life=..35},tag=!defense,tag=aoe] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 water replace air
execute as @s[tag=invert,tag=spell,tag=done,tag=!offense,tag=fire,tag=defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ^-3 ^-1 ^ ^3 ^ ^ water replace air
execute at @e[tag=invert,tag=fire,tag=spell,scores={Life=..35},tag=defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0,type=!player] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ^-3 ^-1 ^ ^3 ^ ^ water replace air