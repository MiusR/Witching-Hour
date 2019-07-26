execute as @e[tag=ees] at @s if entity @p[distance=..8] run summon slime ~ ~ ~ {NoGravity:1b,Silent:1b,DeathLootTable:"09873544",NoAI:1b,AbsorptionAmount:1000f,Size:3,Tags:["inv","eehealth","fr"]}
execute as @e[tag=ees] at @s if entity @p[distance=..8] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 100 1
execute as @e[tag=ees] at @s if entity @p[distance=..8] run kill @s
execute as @e[type=slime,tag=eehealth,tag=!summoned] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Small:1b,Invisible:1b,Tags:["eetorso"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:1}}]}
execute as @e[type=slime,tag=eehealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"56434635",CanPickUpLoot:0b,IsBaby:0b,Tags:["inv","eemovment","slowf"],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Attributes:[{Name:generic.followRange,Base:40},{Name:generic.attackDamage,Base:9},{Name:generic.knockbackResistance,Base:100}]}
execute as @e[type=slime,tag=eehealth,tag=!summoned] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["eehead"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:2}}]}
execute as @e[type=slime,tag=eehealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Team:"bcnc",Silent:1b,Invulnerable:1b,Team:"bcnc",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Tags:["eelefth","inv"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:3}}]}
execute as @e[type=slime,tag=eehealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Team:"bcnc",Silent:1b,Invulnerable:1b,Team:"bcnc",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Tags:["eerighth","inv"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:4}}]}
tag @e[tag=eehealth,type=slime,tag=!summoned] add summoned
execute as @e[tag=eehealth,scores={Life=0}] at @s run kill @e[tag=eemovment,sort=nearest,distance=..2]
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,scores={Life=0},distance=..1] run tp @s ~ -500 ~
execute as @e[tag=eehealth,scores={Life=0}] at @s run tp @e[tag=eerighth,sort=nearest,distance=..2] ~ -500 ~
execute as @e[tag=eerighth] at @s unless entity @e[tag=eehealth,distance=..4] run kill @s
execute as @e[tag=eehealth,scores={Life=0}] at @s run tp @e[tag=eelefth,sort=nearest,distance=..2] ~ -500 ~
execute as @e[tag=eelefth] at @s unless entity @e[tag=eehealth,distance=..4] run kill @s
execute as @e[tag=eehealth,scores={Life=0}] at @s run kill @e[tag=eehead,sort=nearest,distance=..2]
execute as @e[tag=eehealth,scores={Life=0}] at @s run kill @e[tag=eetorso,sort=nearest,distance=..2]
execute as @e[tag=eehealth,scores={Life=0}] at @s run playsound minecraft:entity.ender_dragon.death master @a[distance=..40] ~ ~ ~ 100 1
execute as @e[tag=eehealth,scores={Life=0}] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 100 force
execute as @e[tag=eehealth,scores={Life=0}] at @s run summon experience_orb ~ ~ ~ {Value:7000}
execute as @e[tag=eehealth,scores={Life=0}] at @s run loot spawn ~ ~ ~ loot mb:entities/earth_elemental 
execute as @e[tag=eehealth,scores={Life=0}] at @s run tp @s ~ -500 ~