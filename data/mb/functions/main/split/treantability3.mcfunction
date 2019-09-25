execute as @e[tag=treanttorso] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add tbloom
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add tcab2
execute as @e[tag=treantmovment,tag=tcab2] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=tbloom] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["tflower"],DisabledSlots:4144959}
execute as @e[tag=tflower] at @s run spreadplayers ~ ~ 5 10 false @s
execute as @e[tag=tflower] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:oak_log
execute as @e[tag=tflower] at @s run summon end_crystal ~ ~4 ~ {ShowBottom:0b,Tags:["treantbloom"]}
execute as @e[tag=tflower] at @s run kill @s
execute as @e[tag=tbloom] run tag @s remove tbloom
execute as @e[tag=tcab2] run tag @s remove tcab2
execute as @e[tag=treanthealth] at @s if entity @e[tag=treantbloom,distance=..30] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=treanthealth] at @s unless entity @e[tag=treantbloom,distance=..30] run data merge entity @s {Invulnerable:0b}
execute as @e[tag=treanthealth] at @s if entity @e[tag=treantbloom,distance=..30] run particle minecraft:totem_of_undying ~ ~5 ~ 2 1 2 0 30 force
execute at @e[tag=treanthealth] as @a[distance=..40] if entity @e[tag=treantbloom,distance=..30] run title @s actionbar {"text":"Destroy the Crystal!","color":"red"}