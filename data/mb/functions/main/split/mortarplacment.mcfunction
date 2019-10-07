execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"mortar"}}}] at @s unless entity @e[tag=mortar,distance=..1] unless block ~ ~-1 ~ air run summon leash_knot ~ ~ ~ {Tags:["mortarc"]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"mortar"}}}] at @s if entity @e[tag=mortar,distance=..1] run loot spawn ~ ~ ~ loot mb:items/mortar
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"mortar"}}}] at @s if block ~ ~-1 ~ air run loot spawn ~ ~ ~ loot mb:items/mortar
execute as @e[tag=mortarc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["mortar"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:141}}]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"mortar"}}}] at @s run stopsound @a[distance=..32] * minecraft:entity.firework_rocket.launch 
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"mortar"}}}] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~  
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"mortar"}}}] at @s run kill @s
execute as @e[tag=mortar] at @s if block ~ ~ ~ air if entity @e[tag=mortarc] run setblock ~ ~ ~ minecraft:stone_button[face=floor]
execute as @e[tag=mortarc] at @s run kill @s
execute as @e[tag=mortar] at @s if block ~ ~ ~ air run kill @e[type=item,distance=..1]
execute as @e[tag=mortar] at @s if block ~ ~ ~ air run loot spawn ~ ~ ~ loot mb:items/mortar
execute as @e[tag=mortar] at @s if block ~ ~ ~ air run kill @s