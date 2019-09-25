execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add lfp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=lfp] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=lfp,tag=done] at @s run scoreboard players set @e[tag=magicaltar,distance=..20,scores={Power=50..},limit=1] mb_PowerCost 50
execute as @e[type=armor_stand,tag=cauldron,tag=lfp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=lfp] at @s run loot spawn ~ ~ ~ loot mb:items/living_flame
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=lfp] at @s run tag @s remove lfp