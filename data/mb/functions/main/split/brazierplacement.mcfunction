execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run summon leash_knot ~ ~ ~ {Tags:["brazierc"]}
execute as @e[tag=brazierc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["brazier"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:125}}]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run stopsound @a[distance=..32] * minecraft:entity.firework_rocket.launch 
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~  
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run kill @s
execute as @e[tag=brazierc] at @s run kill @s
execute as @e[tag=brazier] at @s if block ~ ~-1 ~ air run loot spawn ~ ~ ~ loot mb:items/brazier
execute as @e[tag=brazier] at @s if block ~ ~-1 ~ air run kill @s