execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"catalist"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rgcatalist
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rgcatalist] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rgcatalist] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rgcatalist] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rgcatalist] at @s run loot spawn ~ ~ ~ loot mb:items/greater_catalist
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rgcatalist] at @s run tag @s remove rgcatalist