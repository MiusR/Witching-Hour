execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dead_bush",Count:1b}},distance=..1] if block ~ ~-1 ~ minecraft:crafting_table run function mb:utils/find_thrower
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dead_bush",Count:1b}},distance=..1] if block ~ ~-1 ~ minecraft:crafting_table at @a[advancements={mb:white_chalk=true}] run advancement grant @p only mb:broom
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dead_bush",Count:1b}},distance=..1] if block ~ ~-1 ~ minecraft:crafting_table run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Tags:["craft_broom"]}
execute as @e[tag=craft_broom] at @s run kill @e[type=item,distance=..1]
execute as @e[tag=craft_broom] at @s run particle minecraft:cloud ~ ~0.1 ~ 0.1 0.2 0.1 0.1 25
execute as @e[tag=craft_broom] at @s run playsound minecraft:block.anvil.use block @a ~ ~ ~ 
execute as @e[tag=craft_broom] at @s run loot spawn ~ ~ ~ loot mb:items/broom
execute as @e[tag=craft_broom] run kill @s

execute as @a[nbt={SelectedItem:{tag:{id:"broom"}}},scores={Rclick=1..}] at @s run summon leash_knot ~ ~ ~ {Tags:["sweep"]}
execute as @e[tag=sweep] at @s run kill @e[tag=cmwc,distance=..0.2] 
execute as @e[tag=sweep] at @s run kill @e[tag=cmic,distance=..0.2]
execute as @e[tag=sweep] at @s run kill @e[tag=cmgc,distance=..0.2]
execute as @e[tag=sweep] at @s run playsound minecraft:block.sand.break master @a ~ ~ ~ 1 0.7
execute as @e[tag=sweep] run kill @s

execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run function mb:main/split/broomsummon

execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run function mb:main/split/broomsummon

execute as @e[tag=flying_broom] at @s if block ~ ~0.1 ~ minecraft:water run data modify entity @s NoGravity set value 1
execute as @e[tag=flying_broom] at @s unless block ~ ~0.1 ~ minecraft:water run data modify entity @s NoGravity set value 0
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}}] at @s run data modify entity @e[sort=nearest,limit=1,tag=flying_broom] Rotation set from entity @s Rotation
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}}] at @s run data modify entity @e[sort=nearest,limit=1,tag=broom_saddle] Rotation set from entity @s Rotation
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}}] at @s as @e[sort=nearest,limit=1,tag=flying_broom] at @s if block ^ ^0.6 ^1 #mb:passable run tp @s ^ ^ ^0.8