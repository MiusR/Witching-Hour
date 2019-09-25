execute as @e[tag=treanttorso] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add roots
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add tcab
execute as @e[tag=treantmovment,tag=tcab] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=roots] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["fnp","root"],DisabledSlots:4144959}
execute as @e[tag=root,scores={Life=..20}] at @s run tp @s ~ ~0.3 ~
execute as @e[tag=root] at @s run tp @s ^ ^ ^0.3
scoreboard players add @e[tag=root] Life 1
execute as @e[tag=root] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=root,scores={Life=60..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;65280]}]}}}}
execute as @e[tag=root,scores={Life=60..}] at @s run kill @s
execute as @e[tag=root] at @s if entity @p[distance=..2] run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["inv"]}
execute as @e[tag=root] at @s if entity @p[distance=..2] run kill @s
execute as @e[tag=root] at @s run particle minecraft:block minecraft:oak_leaves ~ ~ ~ 0.2 0.2 0.2 0 5 force
tag @e[tag=tcab] remove tcab
tag @e[tag=roots] remove roots