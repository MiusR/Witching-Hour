execute as @e[tag=eerighth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add pillars
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add cab
execute as @e[tag=eemovment,tag=cab] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=eerighth,tag=pillars] at @s run tp @s ~ ~-2 ~
execute as @e[tag=eerighth,tag=pillars] at @s run playsound minecraft:entity.armor_stand.break master @a[distance=..20] ~ ~ ~ 100 1
execute at @a unless block ~ ~-1 ~ minecraft:air as @e[tag=eerighth,tag=pillars,distance=..20] run fill ~ ~-1 ~ ~ ~3 ~ minecraft:stone
execute as @e[tag=eerighth,tag=pillars] at @s run tag @s remove pillars
execute as @e[tag=eerighth] at @s if entity @e[tag=eemovment,sort=nearest,distance=..3,tag=cab] run tp @s ~ ~0.2 ~
execute as @e[tag=eemovment] at @s if entity @e[tag=eerighth,distance=..2] run tag @s remove cab