execute as @a[nbt={SelectedItem:{tag:{id:"book_of_forbbiden_arts_stick"}}},scores={Rclick=1..}] at @s run tag @s add book_setup
execute as @a[tag=book_setup] at @s run replaceitem entity @s weapon.mainhand air
execute as @a[tag=book_setup] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["book_ui"],DisabledSlots:4144959}
execute as @e[tag=book_ui,tag=!done1] at @s store result score @s Page run scoreboard players get @p[distance=..6] Page
execute as @e[tag=book_ui,tag=!done1] at @s run tp @s @p[distance=..1]
execute as @e[tag=book_ui,tag=!done1] at @s run tp @s ~ ~1 ~
scoreboard players set @e[tag=book_ui,tag=!done1] Life 2
tag @e[tag=book_ui] add done1
scoreboard players remove @e[tag=book_ui,tag=!done] Life 1
tag @e[tag=book_ui,scores={Life=0}] add done
tag @a[tag=book_setup] remove book_setup
execute as @e[tag=book_ui,tag=done,tag=!done3] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:130}}]}
execute as @e[tag=book_ui,tag=done,tag=!done3] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..20] ~ ~ ~ 100 1.3
execute as @e[tag=book_ui,tag=done,tag=!done3] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
execute as @e[tag=book_ui,tag=done,tag=!done3] at @s run tag @s add done3
execute as @e[tag=book_ui,tag=done,tag=done3] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=book_ui] at @s if entity @p[distance=..3,scores={Sneak=1..}] run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0 20 force
execute as @e[tag=book_ui] at @s if entity @p[distance=..3,scores={Sneak=1..}] run loot spawn ~ ~ ~ loot mb:items/book_of_forbbiden_arts_stick
execute as @e[tag=book_ui] at @s if entity @p[distance=..3,scores={Sneak=1..}] run setblock ~ ~0.3 ~ air
execute as @a[scores={Sneak=1..}] at @s if entity @e[tag=book_ui,distance=..6] store result score @s Page run scoreboard players get @e[tag=book_ui,distance=..6,sort=nearest,limit=1] Page
execute as @e[tag=book_ui] at @s if entity @p[distance=..3,scores={Sneak=1..}] run kill @s

execute as @e[tag=book_ui] at @s unless entity @a[distance=..10] run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0 20 force
execute as @e[tag=book_ui] at @s unless entity @a[distance=..10] run loot spawn ~ ~ ~ loot mb:items/book_of_forbbiden_arts_stick
execute as @e[tag=book_ui] at @s unless entity @a[distance=..10] run setblock ~ ~0.3 ~ air
execute as @e[tag=book_ui] at @s unless entity @a[distance=..10] run kill @s

execute as @e[tag=book_ui] at @s if entity @e[tag=brazier,distance=..1] run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0 20 force
execute as @e[tag=book_ui] at @s if entity @e[tag=brazier,distance=..1] run loot spawn ~ ~ ~ loot mb:items/book_of_forbbiden_arts_stick
execute as @e[tag=book_ui] at @s if entity @e[tag=brazier,distance=..1] run setblock ~ ~0.3 ~ air
execute as @e[tag=book_ui] at @s if entity @e[tag=brazier,distance=..1] run kill @s

execute as @e[tag=book_ui] at @s if entity @e[tag=magicball,distance=..1] run particle minecraft:cloud ~ ~1 ~ 0.3 0.3 0.3 0 20 force
execute as @e[tag=book_ui] at @s if entity @e[tag=magicball,distance=..1] run loot spawn ~ ~ ~ loot mb:items/book_of_forbbiden_arts_stick
execute as @e[tag=book_ui] at @s if entity @e[tag=magicball,distance=..1] run setblock ~ ~0.3 ~ air
execute as @e[tag=book_ui] at @s if entity @e[tag=magicball,distance=..1] run kill @s

execute as @e[tag=book_ui,tag=done,tag=done1,tag=done3] at @s run particle minecraft:enchant ~ ~1.3 ~ 0 0 0 1 1
execute as @e[tag=book_ui,tag=done,tag=done1,tag=done3] at @s unless block ~ ~-1 ~ air unless block ~ ~0.3 ~ chest run setblock ~ ~0.3 ~ chest[type=left]{CustomName:"{\"text\":\"Babbling Book\",\"color\":\"dark_gray\"}"}
execute as @e[tag=book_ui,tag=done,tag=done1,tag=done3,tag=!update] at @s unless block ~1 ~ ~ air run setblock ~ ~0.3 ~ chest[type=left]{CustomName:"{\"text\":\"Babbling Book\",\"color\":\"dark_gray\"}"}
execute as @e[tag=book_ui,tag=done,tag=done1,tag=done3,tag=!update] at @s unless block ~1 ~ ~ air run tag @s add update
execute as @e[tag=book_ui,tag=done,tag=done1,tag=done3,tag=update] at @s if block ~1 ~ ~ air run setblock ~ ~0.3 ~ chest[type=left]{CustomName:"{\"text\":\"Babbling Book\",\"color\":\"dark_gray\"}"}
execute as @e[tag=book_ui,tag=done,tag=done1,tag=done3,tag=update] at @s if block ~1 ~ ~ air run tag @s remove update
execute as @e[tag=book_ui,tag=!done2,tag=done1,tag=done3] at @s if block ~ ~0.3 ~ chest unless block ~ ~-1 ~ air run function mb:main/bookpage
execute as @e[tag=book_ui,tag=!done2,tag=done1,tag=done3] at @s if block ~ ~0.3 ~ chest unless block ~ ~-1 ~ air run tag @s add done2


execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s run function mb:main/bookpageselector

clear @a #minecraft:all_items{id:"book_item"}
execute as @e[type=item,nbt={Item:{tag:{id:"book_item"}}}] run tag @s add book_item
execute as @e[tag=book_ui] at @s run kill @e[type=item,nbt={Item:{tag:{display:{Name:'{"color":"dark_gray","text":"Babbling Book"}'}}}}]
execute as @e[tag=book_ui] at @s run kill @e[type=item,tag=book_item]