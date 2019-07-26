execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"liquid_of_purity"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"fleshy_unguent"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rcl
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rcl] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rcl,tag=done] at @s run scoreboard players set @e[tag=magicaltar,distance=..20,scores={Power=100..},limit=1] mb_PowerCost 100
execute as @e[type=armor_stand,tag=cauldron,tag=rcl] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rcl] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:leather",Count:3b}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rcl] at @s run tag @s remove rcl
