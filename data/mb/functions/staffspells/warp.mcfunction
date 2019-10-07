execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=warp,tag=!defense] at @s if block ^ ^ ^0.5 bedrock run tag @s add spellend
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=warp,tag=!defense,tag=!spellend] at @s unless block ^ ^ ^0.5 #mb:passable run clone ~1 ~-1 ~1 ~-1 ~1 ~-1 ^ ^ ^1 masked move
execute at @e[tag=!invert,tag=warp,tag=spell,scores={Life=..35},tag=!defense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run spreadplayers ~ ~ 5 10 false @e[distance=..2]
execute at @e[tag=!invert,tag=warp,tag=spell,scores={Life=..35},tag=!defense,tag=aoe] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run spreadplayers ~ ~ 10 40 false @e[distance=..3]

execute as @s[tag=invert,tag=spell,tag=done,tag=warp] at @s run effect give @e[distance=..20] minecraft:regeneration 4 10
execute as @s[tag=invert,tag=spell,tag=done,tag=warp] at @s run scoreboard players set @a[distance=..20] PlayerInfP 0
execute as @s[tag=invert,tag=spell,tag=done,tag=warp] run tag @a[distance=..20] remove spellcooldown
execute as @s[tag=invert,tag=spell,tag=done,tag=warp] at @s run kill @s