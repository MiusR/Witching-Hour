execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=frost,tag=!defense] at @s unless block ^ ^ ^0.5 #mb:passable run tp @s ~ ~ ~ ~ 0
execute at @e[tag=!invert,tag=frost,tag=spell,scores={Life=..35}] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run tp @s ~ ~ ~ ~ 0
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=frost,tag=!defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ~ ~-1 ~ ~ ~1 ~ ice replace air
execute at @e[tag=!invert,tag=frost,tag=spell,scores={Life=..35},tag=!defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~ ~-1 ~ ~ ~1 ~ ice replace air
execute at @e[tag=!invert,tag=frost,tag=spell,scores={Life=..35},tag=!defense,tag=aoe] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 ice replace air
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=frost,tag=defense,tag=!offense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ^-3 ^-1 ^ ^3 ^2 ^ ice replace air
execute at @e[tag=!invert,tag=frost,tag=spell,scores={Life=..35},tag=defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0,type=!player] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ^-3 ^-1 ^ ^3 ^2 ^ ice replace air

execute as @s[tag=invert,tag=spell,tag=done,tag=!offense,tag=frost,tag=!defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ~ ~-1 ~ ~ ~ ~ snow[layers=3] replace air
execute at @e[tag=invert,tag=frost,tag=spell,scores={Life=..35},tag=!defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~ ~-1 ~ ~ ~ ~ snow[layers=3] replace air
execute at @e[tag=invert,tag=frost,tag=spell,scores={Life=..35},tag=!defense,tag=aoe] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ~-1 ~-1 ~-1 ~1 ~ ~1 snow[layers=3] replace air
execute as @s[tag=invert,tag=spell,tag=done,tag=!offense,tag=frost,tag=defense,tag=!offense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ^-3 ^-1 ^ ^3 ^1 ^ snow_block replace air
execute at @e[tag=invert,tag=frost,tag=spell,scores={Life=..35},tag=defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0,type=!player] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ^-3 ^-1 ^ ^3 ^1 ^ snow_block replace air
execute as @s[tag=invert,tag=spell,tag=done,tag=frost,scores={Life=..35}] at @s run effect give @e[distance=..2] minecraft:slowness 5 2

## make walls look good by setting its position to ~ ~ ~ ~ 0