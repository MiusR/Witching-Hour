execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run summon armor_stand ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:10}}],Passengers:[{id:"minecraft:pig",Tags:["inv","broom_saddle"],DeathLootTable:"minecraft:empty",Saddle:1,Invulnerable:1,Silent:1,NoAI:1}],Invulnerable:1,Invisible:1,Tags:["flying_broom","slowf"],Small:1}
execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~
execute as @a[nbt={SelectedItem:{tag:{id:"flying_broom"}}},scores={Rclick=1..}] at @s if block ^ ^0.6 ^1 #mb:passable run replaceitem entity @s weapon.mainhand air

execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run playsound minecraft:item.armor.equip_generic player @a ~ ~ ~
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 25
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s at @e[tag=flying_broom,sort=nearest,limit=1] run loot spawn ~ ~ ~ loot mb:items/flying_broom
execute as @a[nbt={RootVehicle:{Entity:{Tags:["flying_broom"]}}},scores={Sneak=1..}] at @s run kill @e[tag=flying_broom,sort=nearest,limit=1] 
execute as @e[tag=flying_broom] at @s unless entity @e[tag=broom_saddle,distance=..1] run kill @s
execute as @e[tag=broom_saddle] at @s unless entity @e[tag=flying_broom,distance=..1] run tp @s ~ ~-150 ~ 