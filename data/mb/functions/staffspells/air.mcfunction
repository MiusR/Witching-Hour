execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=air,tag=!defense,scores={Life=..38}] at @s if block ^ ^ ^1 #mb:passable run tp @e[distance=..2,type=!armor_stand] @s
execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run data merge entity @e[limit=1,distance=..1,type=!armor_stand] {Motion:[0.0d,1.0d,0.0d]}

execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=aoe,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run data merge entity @e[limit=1,distance=..2,sort=random,type=!armor_stand] {Motion:[0.0d,1.5d,0.0d]}
execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=aoe,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run data merge entity @e[limit=1,distance=..2,sort=random,type=!armor_stand] {Motion:[0.0d,1.5d,0.0d]}
execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=aoe,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run data merge entity @e[limit=1,distance=..2,sort=random,type=!armor_stand] {Motion:[0.0d,1.5d,0.0d]}
execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=aoe,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run data merge entity @e[limit=1,distance=..2,sort=random,type=!armor_stand] {Motion:[0.0d,1.5d,0.0d]}
execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=aoe,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run data merge entity @e[limit=1,distance=..2,sort=random,type=!armor_stand] {Motion:[0.0d,1.5d,0.0d]}
execute at @e[tag=!invert,tag=air,tag=spell,scores={Life=..38},tag=!defense,tag=aoe,tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run particle minecraft:poof ~ ~ ~ 0.1 1 0.1 1 0

execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=air,tag=defense] at @s run effect give @a[distance=..2] minecraft:levitation 2 30
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=air,tag=defense] at @s run effect give @a[distance=..2] minecraft:resistance 7 255
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=air,tag=defense] at @s run tag @s add spellend

execute as @s[tag=invert,tag=spell,tag=done,tag=air] at @s if block ~ ~-0.6 ~ #mb:passable run tp @s ~ ~-0.5 ~
execute as @s[tag=invert,tag=spell,tag=done,tag=!offense,tag=air,tag=!defense] at @s unless block ^ ^ ^0.5 #mb:passable run summon minecraft:creeper ~ ~ ~ {DeathLootTable:"456789",Fuse:0,ignited:1b}
execute at @e[tag=invert,tag=air,tag=spell,scores={Life=..35},tag=!defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run summon minecraft:creeper ~ ~ ~ {DeathLootTable:"456789",Fuse:0,ignited:1b}
execute at @e[tag=invert,tag=air,tag=spell,scores={Life=..35},tag=!defense,tag=aoe] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run summon minecraft:creeper ~ ~ ~ {DeathLootTable:"456789",powered:1b,Fuse:0,ignited:1b}

execute as @s[tag=invert,tag=spell,tag=done,tag=air] at @s run tp @s ~ ~ ~ ~ 0
execute as @s[tag=invert,tag=spell,tag=done,tag=air] at @s if block ~ ~-0.6 ~ #mb:passable run tp @s ~ ~-0.5 ~
execute as @s[tag=invert,tag=spell,tag=done,tag=air] at @s unless block ^ ^ ^0.5 #mb:passable run tag @s add spellend
execute as @s[tag=invert,tag=spell,tag=done,tag=!offense,tag=air,tag=defense] at @s unless block ^ ^ ^0.5 #mb:passable run fill ^-3 ^-1 ^ ^3 ^1 ^ stone replace air
execute at @e[tag=invert,tag=air,tag=spell,scores={Life=..35},tag=defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0,type=!player] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run fill ^-1 ^-1 ^-1 ^1 ^1 ^1 stone replace air