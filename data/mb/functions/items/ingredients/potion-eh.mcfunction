execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"hint_of_ageing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"looping_fumes"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=50..},limit=1] if block ~ ~-1 ~ fire run tag @s add rehp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rehp] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rehp,tag=done] at @s run scoreboard players set @e[tag=magicaltar,distance=..20,scores={Power=50..},limit=1] mb_PowerCost 50
execute as @e[type=armor_stand,tag=cauldron,tag=rehp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rehp] at @s run loot spawn ~ ~ ~ loot mb:items/eternal_hunger
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rehp] at @s run tag @s remove rehp