execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"magic_ball"}}}] at @s run summon leash_knot ~ ~ ~ {Tags:["mcboftc"]}
execute as @e[tag=mcboftc] at @s run summon armor_stand ~ ~-0.5000 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["magicball"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:123}}]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"magic_ball"}}}] at @s run playsound minecraft:block.glass.place block @a ~ ~ ~  
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"magic_ball"}}}] at @s run kill @s
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"magic_ball"}}}] run kill @s
execute as @e[tag=mcboftc] at @s run kill @s
execute as @e[tag=magicball] at @s if block ~ ~-0.3 ~ air run loot spawn ~ ~ ~ loot mb:items/magic_ball
execute as @e[tag=magicball] at @s if block ~ ~-0.3 ~ air run kill @s