execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"breath_of_the_moss_guardian"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rst
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rst] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rst,tag=done] at @s run scoreboard players set @e[tag=magicaltar,distance=..20,scores={Power=50..},limit=1] mb_PowerCost 50
execute as @e[type=armor_stand,tag=cauldron,tag=rst] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rst] at @s run loot spawn ~ ~ ~ loot mb:items/skys_tear
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rst] at @s run tag @s remove rst