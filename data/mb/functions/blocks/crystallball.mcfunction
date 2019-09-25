scoreboard players set @a[tag=!fortuneinit] fortunetimer 0
tag @a[tag=!fortuneinit,scores={fortunetimer=0}] add fortuneinit
scoreboard players remove @a[scores={fortunetimer=1..}] fortunetimer 1
execute as @a[scores={fortunetimer=6000},tag=!fortune2,tag=!fortune3,tag=!fortune4,tag=!fortune5,tag=!fortune6,tag=!fortune7,tag=!fortune8,tag=!fortune10,tag=!fortune11,tag=!fortune12] at @s run tellraw @s {"text":"Your prediction came true!","color":"gold"}
execute as @a[scores={fortunetimer=1},tag=!fortune1,tag=!fortune9] at @s run tellraw @s {"text":"Your prediction came true!","color":"gold"}
execute as @a[scores={fortunetimer=6000},tag=!fortune2,tag=!fortune3,tag=!fortune4,tag=!fortune5,tag=!fortune6,tag=!fortune7,tag=!fortune8,tag=!fortune10,tag=!fortune11,tag=!fortune12] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1
execute as @a[scores={fortunetimer=1},tag=!fortune1,tag=!fortune9] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1


execute at @e[tag=magicball] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},distance=..1] as @p[distance=..10,scores={fortunetimer=0}] run function mb:main/split/crystalballfortunes
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~-1 ~ #dirt_like if block ~ ~ ~ air unless block ~ ~ ~ water run setblock ~ ~ ~ minecraft:tall_grass[half=lower]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~-1 ~ #dirt_like if block ~ ~ ~ air unless block ~ ~ ~ water run setblock ~ ~ ~ minecraft:tall_grass[half=lower]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~-1 ~ #dirt_like if block ~ ~1 ~ air unless block ~ ~ ~ water run setblock ~ ~1 ~ minecraft:tall_grass[half=upper]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~-1 ~ #dirt_like if block ~ ~1 ~ air unless block ~ ~ ~ water run setblock ~ ~1 ~ minecraft:tall_grass[half=upper]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~ ~ water unless block ~ ~1 ~ air run setblock ~ ~ ~ minecraft:tall_seagrass[half=lower]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~ ~ water unless block ~ ~1 ~ air run setblock ~ ~ ~ minecraft:tall_seagrass[half=lower]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~1 ~ water unless block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:tall_seagrass[half=upper]
execute as @a[scores={fortunetimer=..6000},tag=fortune1] at @s if block ~ ~1 ~ water unless block ~ ~1 ~ air run setblock ~ ~1 ~ minecraft:tall_seagrass[half=upper]
execute as @a[scores={fortunetimer=0}] at @s run function mb:main/split/crystalballfortunes

execute as @e[tag=magicball] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},distance=..1] if entity @e[tag=magicaltar,distance=..20,scores={Power=..199}] run particle minecraft:dust 1 0.8 0 1 ~ ~0.7 ~ 0 0 0 0 10
execute as @e[tag=magicball] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},distance=..1] if entity @e[tag=magicaltar,distance=..20,scores={Power=..199}] run kill @e[type=item,distance=..1]