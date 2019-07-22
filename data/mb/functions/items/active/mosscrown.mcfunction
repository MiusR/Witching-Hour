execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_incomplete"}}},scores={Rclick=1..}] run loot replace entity @s armor.head loot mb:items/moss_crown_incomplete
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_complete"}}},scores={Rclick=1..}] run loot replace entity @s armor.head loot mb:items/moss_crown_complete

execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_incomplete"}}},scores={Rclick=1..}] run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 50 1
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_incomplete"}}},scores={Rclick=1..}] run replaceitem entity @s weapon.mainhand air
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_complete"}}},scores={Rclick=1..}] run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 50 1
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_complete"}}},scores={Rclick=1..}] run replaceitem entity @s weapon.mainhand air


execute as @a[nbt={Inventory:[{Slot:103b,tag:{id:"moss_crown_complete"}}]},scores={Sneak=1..},tag=sotwi] at @s run tag @s add mswave
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=8..}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 5
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=8..}] at @s positioned ^ ^ ^4 run tp @e[type=!player,distance=..6,nbt=!{Tags:[]}] ^ ^ ^4
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=8..}] at @s run scoreboard players remove @s PlayerInfP 8
execute as @a[tag=mswave,scores={Sneak=1..}] at @s run tag @s add forceDIP
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=8..}] at @s run tag @s remove mswave