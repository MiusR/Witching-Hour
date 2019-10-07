execute as @e[tag=mortar] at @s if entity @e[type=item,distance=..1] run function mb:main/split/mortaritems
execute as @e[tag=mortar,tag=hasitems,tag=!start] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:142}}]}
execute as @e[tag=mortar,tag=hasitems] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] run tag @s add start
execute as @e[tag=mortar,tag=hasitems] at @s if block ~ ~ ~ minecraft:stone_button[powered=true] run scoreboard players set @s Timer 20
execute as @e[tag=mortar,tag=start,scores={Timer=20}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:143}}]}
scoreboard players remove @e[tag=mortar,scores={Timer=1..}] Timer 1
execute as @e[tag=mortar,tag=start,scores={Timer=0}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:141}}]}
execute as @e[tag=mortar,tag=start,scores={Timer=0}] run tag @s remove hasitems
execute as @e[tag=mortar,tag=start,scores={Timer=0}] run function mb:main/split/mortarrecipes
execute as @e[tag=cauldron] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"mysterious_dust"}}}] run function mb:main/split/staffinfusion
execute as @e[tag=mortar,tag=start,scores={Timer=0}] run data merge entity @s {Tags:["mortar"]}