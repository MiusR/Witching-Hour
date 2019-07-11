execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_incomplete"}}},scores={Rclick=1..}] run loot replace entity @s armor.head loot mb:items/moss_crown_incomplete
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_complete"}}},scores={Rclick=1..}] run loot replace entity @s armor.head loot mb:items/moss_crown_complete

execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_incomplete"}}},scores={Rclick=1..}] run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 50 1
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_incomplete"}}},scores={Rclick=1..}] run replaceitem entity @s weapon.mainhand air
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_complete"}}},scores={Rclick=1..}] run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 50 1
execute as @a[nbt={SelectedItem:{tag:{id:"moss_crown_complete"}}},scores={Rclick=1..}] run replaceitem entity @s weapon.mainhand air


execute as @a[nbt={Inventory:[{Slot:103b,tag:{id:"moss_crown_complete"}}]},scores={Sneak=1..},tag=sotwi] at @s if block ~ ~-1 ~ air run tag @s add mswave
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=100..}] at @s unless block ~ ~-0.1 ~ air run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 5 100
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=100..}] at @s unless block ~ ~-0.1 ~ air run effect give @e[distance=..20] minecraft:instant_health 1 2
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=100..}] at @s unless block ~ ~-0.1 ~ air run scoreboard players remove @s PlayerInfP 100
execute as @a[tag=mswave,scores={Sneak=1..}] at @s unless block ~ ~-0.1 ~ air run tag @s add clearchat
execute as @a[tag=mswave,scores={Sneak=1..}] at @s unless block ~ ~-0.1 ~ air run tag @s add forceDIP
execute as @a[tag=mswave,scores={Sneak=1..,PlayerInfP=100..}] at @s unless block ~ ~-0.1 ~ air run tag @s remove mswave