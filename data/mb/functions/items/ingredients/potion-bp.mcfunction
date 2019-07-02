execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"fleshy_unguent"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"oli_of_thorns"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbp] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbp] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rbp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbp] at @s run loot spawn ~ ~ ~ loot mb:items/bottled_pain
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbp] at @s run tag @s remove rbp