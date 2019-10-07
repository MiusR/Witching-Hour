execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"hint_of_ageing"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"catalist"}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"tounge_of_dog"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{toeoffrog:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run tag @s add rboticks
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rboticks] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rboticks] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] add rpo
execute as @e[type=armor_stand,tag=cauldron,tag=rboticks] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboticks] at @s run loot spawn ~ ~ ~ loot mb:crafting/cauldron/brew_of_patience
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboticks] at @s run tag @s remove rboticks