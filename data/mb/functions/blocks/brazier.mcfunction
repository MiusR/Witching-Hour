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

execute as @e[tag=brazier,tag=!bone,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bone",Count:1b}}] run tag @s add bone
execute as @e[tag=brazier,tag=bone,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=bone,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bone",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!lilotv,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] run tag @s add lilotv
execute as @e[tag=brazier,tag=lilotv,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=lilotv,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!dark_oak,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}] run tag @s add dark_oak
execute as @e[tag=brazier,tag=dark_oak,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=dark_oak,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dark_oak_log",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!diamond,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run tag @s add diamond
execute as @e[tag=brazier,tag=diamond,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=diamond,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!chicken,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:chicken",Count:1b}}] run tag @s add chicken
execute as @e[tag=brazier,tag=chicken,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=chicken,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:chicken",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!azure_bluet,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:azure_bluet",Count:1b}}] run tag @s add azure_bluet
execute as @e[tag=brazier,tag=azure_bluet,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=azure_bluet,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:azure_bluet",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!iron_ingot,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run tag @s add iron_ingot
execute as @e[tag=brazier,tag=iron_ingot,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=iron_ingot,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!gold_ingot,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] run tag @s add gold_ingot
execute as @e[tag=brazier,tag=gold_ingot,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=gold_ingot,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!birch_log,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:birch_log",Count:1b}}] run tag @s add birch_log
execute as @e[tag=brazier,tag=birch_log,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=birch_log,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:birch_log",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!redstone,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run tag @s add redstone
execute as @e[tag=brazier,tag=redstone,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=redstone,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!dead_bush,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dead_bush",Count:1b}}] run tag @s add dead_bush
execute as @e[tag=brazier,tag=dead_bush,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=dead_bush,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dead_bush",Count:1b}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!spectral_dust,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"spectral_dust"}}}] run tag @s add spectral_dust
execute as @e[tag=brazier,tag=spectral_dust,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=spectral_dust,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"spectral_dust"}}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=!luck,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"liquid_luck"}}}] run tag @s add luck
execute as @e[tag=brazier,tag=luck,tag=!hasitems,tag=!ignited] at @s run tag @s add hasitems
execute as @e[tag=brazier,tag=luck,tag=!ignited] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"liquid_luck"}}}] run kill @e[type=item,distance=..1]

execute as @e[tag=brazier,tag=bone,tag=dark_oak,tag=lilotv,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bdeathlyvail
execute as @e[tag=brazier,tag=bone,tag=dark_oak,tag=lilotv,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 2400
execute as @e[tag=brazier,tag=bone,tag=dark_oak,tag=lilotv,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=brazier,tag=bdeathlyvail] at @s run particle minecraft:large_smoke ~ ~ ~ 10 5 10 0 100 force
execute as @e[tag=brazier,tag=bdeathlyvail] at @s run effect give @a[distance=..20,gamemode=survival] minecraft:blindness 2 255
execute as @e[tag=brazier,tag=bdeathlyvail,scores={braziertimer=0}] at @s run tag @s remove bdeathlyvail

execute as @e[tag=brazier,tag=gold_ingot,tag=chicken,tag=azure_bluet,tag=luck,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bssf
execute as @e[tag=brazier,tag=gold_ingot,tag=chicken,tag=azure_bluet,tag=luck,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 500
execute as @e[tag=brazier,tag=gold_ingot,tag=chicken,tag=azure_bluet,tag=luck,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run summon chicken ~ ~ ~ {DeathLootTable:"mb:entities/spectral_familiar",Team:"UF",PersistenceRequired:1b,IsChickenJockey:0b,Motion:[0.0,1.0,0.0],Tags:["inv","joinUF"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0.85F,0.85F,0.85F,0.6F]}
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run tag @s remove bssf

execute as @e[tag=brazier,tag=spectral_dust,tag=iron_ingot,tag=lilotv,tag=birch_log,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bsbanshee
execute as @e[tag=brazier,tag=spectral_dust,tag=iron_ingot,tag=lilotv,tag=birch_log,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 500
execute as @e[tag=brazier,tag=spectral_dust,tag=iron_ingot,tag=lilotv,tag=birch_log,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"mb:entities/banshee",IsBaby:0b,Tags:["banshee","inv","slowf"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:128}}],ArmorDropChances:[0.85F,0.85F,0.5F,-327.67F],Attributes:[{Name:generic.movementSpeed,Base:0.001},{Name:generic.attackDamage,Base:0}],CustomName:"\"Banshee\""}
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run tag @s remove bsbanshee
execute as @e[tag=banshee] at @s if entity @p[distance=..10] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:129}}],ArmorDropChances:[0.85F,0.85F,0.5F,-327.67F]}
execute as @e[tag=banshee] at @s unless entity @p[distance=..10] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:128}}],ArmorDropChances:[0.85F,0.85F,0.5F,-327.67F]}
execute as @e[tag=banshee] at @s if entity @p[distance=..10] run playsound minecraft:entity.ghast.hurt hostile @a[distance=..10] ~ ~ ~ 5 1

execute as @e[tag=brazier,tag=lilotv,tag=bone,tag=azure_bluet,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if score traker Time matches 13000..23000 run tag @s add bsspectre
execute as @e[tag=brazier,tag=lilotv,tag=bone,tag=azure_bluet,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if score traker Time matches 13000..23000 run scoreboard players set @s braziertimer 500
execute as @e[tag=brazier,tag=lilotv,tag=bone,tag=azure_bluet,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if score traker Time matches 13000..23000 run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run summon phantom ~ ~10 ~ {Size:10}
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run tag @s remove bsspectre

execute as @e[tag=brazier,tag=diamond,tag=iron_ingot,tag=dark_oak,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bssd
execute as @e[tag=brazier,tag=diamond,tag=iron_ingot,tag=dark_oak,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 500
execute as @e[tag=brazier,tag=diamond,tag=iron_ingot,tag=dark_oak,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run summon iron_golem ~ ~ ~ {Team:"UF",PersistenceRequired:1b,Tags:["inv","joinUF"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{display:{Name:"{\"text\":\"Spectral Dust\",\"color\":\"green\"}"},CustomModelData:127,id:"spectral_dust"}}],ArmorDropChances:[0.85F,0.85F,0.85F,0.6F]}
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run tag @s remove bssd

execute as @e[tag=brazier,tag=dead_bush,tag=redstone,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bssh
execute as @e[tag=brazier,tag=dead_bush,tag=redstone,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 500
execute as @e[tag=brazier,tag=dead_bush,tag=redstone,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rorain
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run summon skeleton ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,Team:"UF",Tags:["joinUF","undeadh"],CustomName:"{\"text\":\"Undead Hunter\",\"color\":\"green\"}",HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[-327.67F,0.85F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:skeleton_skull",Count:1b}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,-327.67F]}
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run tag @s remove bssh
execute as @e[tag=undeadh,tag=!text] at @s if entity @p[distance=..15] run tellraw @a[distance=..15] {"text":"<Undead Hunter> Who shall be my target ?","color":"red","hoverEvent":{"action":"show_text","value":"You need a Blood Pact"}}
execute as @e[tag=undeadh,tag=!text] at @s if entity @p[distance=..15] run tag @s add text
execute as @e[tag=undeadh,tag=text] at @s if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"blood_pact"}}}] store result score @s Taglocktemp run data get entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"blood_pact"}}},limit=1] Item.tag.taglockdata 1
execute as @e[tag=undeadh,tag=text] at @s if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"blood_pact"}}}] unless score @s Taglocktemp = @a[limit=1] Taglock run tellraw @a[distance=..15] {"text":"<Undead Hunter> I can't find something that doesn't exist!","color":"red","hoverEvent":{"action":"show_text","value":"Player offline! :("}}
execute as @e[tag=undeadh,tag=text] at @s if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"blood_pact"}}}] if score @s Taglocktemp = @a[limit=1] Taglock run tellraw @a[distance=..15] {"text":"<Undead Hunter> Your wish is my command!","color":"red","hoverEvent":{"action":"show_text","value":"Done!"}}
execute as @a[] at @s if score @s Taglock = @e[tag=undeadh,limit=1] Taglocktemp run summon skeleton ~1 ~ ~1 {CustomNameVisible:1b,CustomName:"{\"text\":\"Bounty Hunter\",\"color\":\"red\"}",HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:iron_axe",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.2F,0.5F,0.2F,-327.67F]}
execute as @a[] at @s if score @s Taglock = @e[tag=undeadh,limit=1] Taglocktemp run summon skeleton ~-1 ~ ~1 {CustomNameVisible:1b,CustomName:"{\"text\":\"Bounty Hunter\",\"color\":\"red\"}",HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:iron_axe",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.2F,0.5F,0.2F,-327.67F]}
execute as @a[] at @s if score @s Taglock = @e[tag=undeadh,limit=1] Taglocktemp run summon skeleton ~ ~ ~-1 {CustomNameVisible:1b,CustomName:"{\"text\":\"Bounty Hunter\",\"color\":\"red\"}",HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:iron_axe",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}},{id:"minecraft:acacia_button",Count:1b}],ArmorDropChances:[0.2F,0.5F,0.2F,-327.67F]}
execute as @e[tag=undeadh,tag=text] at @s if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"blood_pact"}}}] run tag @s add done
execute as @e[tag=undeadh,tag=text,tag=done] at @s run kill @e[type=item,distance=..3]
execute as @e[tag=undeadh,tag=text,tag=done] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 100
execute as @e[tag=undeadh,tag=text,tag=done] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..15] ~ ~ ~ 100 1
execute as @e[tag=undeadh,tag=text,tag=done] at @s run tp @s ~ -250 ~
execute as @e[tag=undeadh,tag=text,tag=done] at @s run kill @s




execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove bone
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove diamond
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove chicken
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove azure_bluet
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove dark_oak
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove lilotv
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove iron_ingot
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove birch_log
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove spectral_dust
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove luck
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove gold_ingot
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove redstone
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove dead_bush
execute as @e[tag=brazier,tag=ignited,tag=hasitems,tag=!bdeathlyvail,tag=!bssf,tag=!bsbanshee,tag=!bsspectre,tag=!bssd,tag=!bssh] at @s run particle minecraft:dust 0.5 0 1 1 ~ ~1 ~ 0 0 0 0 10
execute as @e[tag=brazier,tag=hasitems] at @s if block ~ ~ ~ fire run tag @s remove hasitems
execute as @e[tag=brazier,tag=hasitems] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:126}}]}
execute as @e[tag=brazier,tag=!hasitems] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:125}}]}
execute as @e[tag=brazier] at @s if block ~ ~ ~ fire run setblock ~ ~ ~ air
execute as @e[tag=brazier] at @s if block ~ ~ ~ water run data merge entity @s {Tags:["brazier"]}
execute as @e[tag=brazier] at @s if block ~ ~ ~ water run setblock ~ ~ ~ air
execute as @e[tag=brazier,tag=ignited,scores={braziertimer=0}] run tag @s remove ignited