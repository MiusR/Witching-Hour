scoreboard players set counter count 0
scoreboard players set scounter count 0
execute as @e[type=zombie,tag=!found] run scoreboard players add counter count 1
execute as @e[type=enderman,tag=!found] in minecraft:overworld run scoreboard players add scounter count 1
execute as @a[] at @s run tag @e[type=zombie,distance=..16] add found
execute as @a[] at @s run tag @e[type=enderman,distance=..16] add found
execute as @e[sort=random,type=zombie,tag=!found,limit=1] if score counter count matches 27 run tag @s add s_evilp
execute as @e[sort=random,type=zombie,tag=!found,limit=1] if score counter count matches 27 run tag @s add s_frog
execute as @e[sort=random,type=zombie,tag=!found,limit=1] in overworld if score scounter count matches 15 run tag @s add c_carvedstone
execute as @e[sort=random,type=enderman,tag=!found,limit=1] in overworld if score scounter count matches 6 if block ~ ~-1 ~ grass_block run tag @s add c_faetree
execute as @e[tag=!found,type=zombie] if score counter count matches 27 run tag @s add found
execute as @e[tag=!found,type=enderman] in overworld if score scounter count matches 6 run tag @s add found
execute as @e[tag=c_carvedstone] at @s run setblock ~ ~ ~ minecraft:structure_block{metadata: "", mirror: "NONE", ignoreEntities: 1b, powered: 0b, seed: 0L, author: "Ancient_Spirit", rotation: "NONE", posX: -1, mode: "LOAD", posY: 0, sizeX: 4, posZ: -1, integrity: 1.0f, showair: 0b, x: 4, name: "mb:carvedstone", y: 4, z: -6, id: "minecraft:structure_block", sizeY: 8, sizeZ: 4, showboundingbox: 1b}
execute as @e[tag=c_faetree] at @s run setblock ~ ~ ~ minecraft:structure_block{metadata: "", mirror: "NONE", powered: 0b, seed: 0L, author: "Ancient_Spirit", rotation: "NONE", posX: -1, mode: "LOAD", posY: -9, sizeX: 4, posZ: -1, integrity: 1.0f, showair: 0b, x: 4, name: "mb:fae_tree", y: 4, z: -6, id: "minecraft:structure_block", sizeY: 8, sizeZ: 4, showboundingbox: 1b}
execute as @e[tag=c_faetree] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[tag=c_faetree] at @s run tp @s ~ ~-250 ~
execute as @e[tag=c_faetree] at @s run kill @s
execute as @e[tag=c_carvedstone] at @s run setblock ~ ~1 ~ redstone_block
execute as @e[tag=c_carvedstone] at @s run tp @s ~ ~-250 ~
execute as @e[tag=c_carvedstone] at @s run kill @s
execute as @e[tag=s_evilp] at @s run summon slime ~ ~ ~ {DeathLootTable:"56789",AbsorptionAmount:14f,Size:1,Tags:["inv","evilpumpkin"],Attributes:[{Name:generic.attackDamage,Base:5}],CustomName:"\"Evil Pumpkin\""}
execute as @e[tag=s_evilp] at @s run tp @s ~ -250 ~
execute as @e[tag=s_evilp] at @s run kill @s
execute as @e[type=minecraft:villager,nbt={VillagerData:{profession: "minecraft:cleric",level: 1}},tag=!cleric] at @s run tag @s add cleric
execute as @e[type=minecraft:villager,nbt=!{VillagerData:{profession: "minecraft:cleric",level: 1}},tag=cleric] at @s run tag @s remove cleric
scoreboard players add @e[type=minecraft:villager,tag=cleric] ADT 1
execute as @e[type=minecraft:villager,tag=cleric,scores={ADT=4000}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"composter",ReapplicationDelay:80,Radius:1f,RadiusPerTick:0.1f,Duration:100,Color:65322,Potion:"minecraft:strong_swiftness"}
execute as @e[type=minecraft:villager,tag=cleric,scores={ADT=4000}] at @s run playsound minecraft:entity.villager.yes master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[type=minecraft:villager,tag=cleric,scores={ADT=8000..}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"hearth",ReapplicationDelay:80,Radius:1f,RadiusPerTick:0.1f,Duration:100,Color:16772608,Potion:"minecraft:regeneration"}
execute as @e[type=minecraft:villager,tag=cleric,scores={ADT=8000..}] at @s run playsound minecraft:entity.villager.yes master @a[distance=..20] ~ ~ ~ 100 1
scoreboard players reset @e[type=minecraft:villager,tag=cleric,scores={ADT=8000..}] ADT
execute as @e[type=slime,tag=evilpumpkin,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ephead"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b}],ArmorDropChances:[0.85F,0.85F,0.7F,-327.67F]}
execute as @e[type=slime,tag=evilpumpkin,tag=!done] at @s run tag @s add done
execute as @e[tag=ephead] at @s run tp @s @e[limit=1,sort=nearest,tag=evilpumpkin,distance=..2]
execute as @e[tag=ephead] at @s run tp @s ~ ~-1.3 ~
execute as @e[type=armor_stand,tag=ephead] at @s unless entity @p[distance=..10] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute as @e[type=armor_stand,tag=ephead] at @s if entity @p[distance=..10] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b}]}
execute as @e[type=slime,tag=evilpumpkin] at @s unless block ~ ~-0.2 ~ air unless entity @p[distance=..10] run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute as @e[type=slime,tag=evilpumpkin] at @s unless block ~ ~-0.2 ~ air if entity @p[distance=..10] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[type=slime,tag=evilpumpkin] at @s unless block ~ ~-0.2 ~ air unless entity @p[distance=..10] run setblock ~ ~ ~ minecraft:carved_pumpkin
execute as @e[type=slime,tag=evilpumpkin] at @s unless block ~ ~-0.2 ~ air if entity @p[distance=..10] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:carved_pumpkin
execute as @e[tag=ephead] at @s unless entity @e[tag=evilpumpkin,distance=..2] run kill @s
execute as @e[tag=evilpumpkin,scores={Life=0}] at @s run loot spawn ~ ~ ~ loot mb:entities/evil_pumpkin
execute as @e[tag=evilpumpkin,scores={Life=0}] at @s run tp @s ~ -150 ~
execute as @e[tag=evilpumpkin,scores={Life=0}] at @s run scoreboard players reset @s Life
execute as @e[tag=evilpumpkin,scores={Life=0}] at @s run kill @s
execute as @e[tag=s_frog] at @s run summon slime ~ ~ ~ {DeathLootTable:"56789",AbsorptionAmount:14f,Size:0,Tags:["inv","frog"],Attributes:[{Name:generic.attackDamage,Base:0},{Name:generic.followRange,Base:0}]}
execute as @e[tag=frog,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["frog_gfx"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:12}}]}
execute as @e[tag=frog,tag=!done] at @s run tag @s add done
execute as @e[tag=frog_gfx] at @s run tp @s @e[tag=frog,tag=done,limit=1,distance=..2,sort=nearest]
execute as @e[tag=frog,scores={Life=0}] at @s run kill @e[distance=..1,sort=nearest,tag=frog_gfx,limit=1]
execute as @e[tag=s_frog] at @s run tp @s ~ -250 ~
execute as @e[tag=s_frog] at @s run kill @s
execute as @e[tag=frog,scores={Life=0}] at @s run loot spawn ~ ~ ~ loot mb:entities/frog
execute as @e[tag=frog,scores={Life=0}] at @s run tp @s ~ -150 ~
execute as @e[tag=frog,scores={Life=0}] at @s run scoreboard players reset @s Life
execute as @e[tag=frog,scores={Life=0}] at @s run kill @s