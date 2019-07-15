execute as @e[tag=brazier,tag=!init] run scoreboard players set @s braziertimer 0
execute as @e[tag=brazier,tag=!init] run tag @s add init
scoreboard players remove @e[tag=brazier,scores={braziertimer=1..}] braziertimer 1

execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run summon leash_knot ~ ~ ~ {Tags:["brazierc"]}
execute as @e[tag=brazierc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["brazier"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:125}}]}
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run stopsound @a[distance=..32] * minecraft:entity.firework_rocket.launch 
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run playsound minecraft:block.stone.place block @a ~ ~ ~  
execute as @e[type=firework_rocket,nbt={FireworksItem:{tag:{id:"brazier"}}}] at @s run kill @s
execute as @e[tag=brazierc] at @s run kill @s
execute as @e[tag=brazier] at @s if block ~ ~-1 ~ air run loot spawn ~ ~ ~ loot mb:items/brazier
execute as @e[tag=brazier] at @s if block ~ ~-1 ~ air run kill @s

execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s add ignited
execute as @e[tag=brazier,tag=!hasitems] at @s if block ~ ~ ~ fire run particle minecraft:dust 0 0 1 1 ~ ~1 ~ 0 0 0 0.1 10
execute as @e[tag=brazier,tag=ignited] at @s run particle minecraft:flame ~ ~0.8 ~ 0.05 0 0.05 0 1

execute as @e[tag=brazier,tag=ignited,tag=hasitems] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=..49}] run particle minecraft:dust 1 0.8 0 1 ~ ~1 ~ 0 0 0 0 10

execute as @e[tag=brazier,tag=!ignited] at @s if entity @e[type=item,distance=..1] run function mb:main/split/brazieritems

execute as @e[tag=brazier,tag=ignited] at @s run function mb:main/split/brazierrecipes
execute as @e[tag=brazier,scores={braziertimer=1.. }] at @s run function mb:main/split/brazierrecipes

execute as @e[tag=undeadh] at @s run function mb:entities/normal/undeadhunter

execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run function mb:main/split/brazieritemcheck
execute as @e[tag=brazier,tag=ignited,tag=hasitems,tag=!bdeathlyvail,tag=!bssf,tag=!bsbanshee,tag=!bsspectre,tag=!bssd,tag=!bssh] at @s run particle minecraft:dust 0.5 0 1 1 ~ ~1 ~ 0 0 0 0 10
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove hasitems
execute as @e[tag=brazier,tag=hasitems] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:126}}]}
execute as @e[tag=brazier,tag=!hasitems] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:125}}]}
execute as @e[tag=brazier] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute as @e[tag=brazier] at @s if block ~ ~ ~ water run data merge entity @s {Tags:["brazier"]}
execute as @e[tag=brazier] at @s if block ~ ~ ~ water run setblock ~ ~ ~ air
execute as @e[tag=brazier,tag=ignited,scores={braziertimer=0}] run tag @s remove ignited