execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:8b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add fup
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=fup] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=fup] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=fup] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=fup] at @s run loot spawn ~ ~ ~ loot mb:items/fleshy_unguent
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=fup] at @s run tag @s remove fup