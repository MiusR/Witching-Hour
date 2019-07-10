execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{"id":"moss_crown_incomplete"}}},distance=..1] if entity @e[type=item,nbt={Item:{tag:{"id":"natures_core"}}},distance=..1] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rmcf
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rmcf] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rmcf] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rmcf] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmcf] at @s run loot spawn ~ ~ ~ loot mb:items/moss_crown_complete
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmcf] at @s run tag @s remove rmcf