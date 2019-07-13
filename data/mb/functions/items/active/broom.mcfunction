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


execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run summon armor_stand ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10}}],Passengers:[{id:"minecraft:pig",Tags:["inv","broom_saddle"],DeathLootTable:"minecraft:empty",Saddle:1,Invulnerable:1,Silent:1,NoAI:1}],Invulnerable:1,Invisible:1,Tags:["flying_broom","slowf"],Small:1}
execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~
execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run replaceitem entity @s weapon.mainhand air

execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 25
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot mb:items/flying_broom
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s run kill @e[tag=flying_broom,sort=nearest,limit=1] 
execute as @e[tag=flying_broom] at @s unless entity @e[tag=broom_saddle,distance=..1] run kill @s
execute as @e[tag=broom_saddle] at @s unless entity @e[tag=flying_broom,distance=..1] run tp @s ~ ~-150 ~ 



execute as @e[tag=flying_broom] at @s if block ~ ~0.1 ~ minecraft:water run data modify entity @s NoGravity set value 1
execute as @e[tag=flying_broom] at @s unless block ~ ~0.1 ~ minecraft:water run data modify entity @s NoGravity set value 0
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}}] at @s run data modify entity @e[sort=nearest,limit=1,tag=flying_broom] Rotation set from entity @s Rotation
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}}] at @s as @e[sort=nearest,limit=1,tag=flying_broom] at @s if block ^ ^0.6 ^1 #mb:passable run tp @s ^ ^ ^0.8
