execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treanttorso"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:5}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treantheadup"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:6}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treantheaddown"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:7}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treantlegbackleft"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:8}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treantlegbackright"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:9}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treantlegfrontleft"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:10}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon zombie ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"bcnc",DeathLootTable:"5678",PersistenceRequired:1b,NoAI:1b,IsBaby:1b,Tags:["inv","treantlegfrontright"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:11}}]}
execute as @e[tag=treanthealth,tag=!summoned] at @s run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"45678",PersistenceRequired:1b,IsBaby:0b,Tags:["inv","treantmovment","fr"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b}],Attributes:[{Name:generic.knockbackResistance,Base:100},{Name:generic.attackDamage,Base:4}],Size:7}
execute as @e[tag=treanthealth,tag=!summoned] at @s run tag @s add summoned

execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,scores={Life=0},distance=..2] run tp @s ~ -500 ~
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,scores={Life=0},distance=..2] run kill @s
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treanttorso,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treantheadup,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treantheaddown,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treantlegbackleft,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treantlegbackright,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treantlegfrontright,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @e[tag=treantlegfrontleft,sort=nearest,distance=..2]
execute as @e[tag=treanthealth,scores={Life=0}] at @s run playsound minecraft:entity.ender_dragon.death master @a[distance=..40] ~ ~ ~ 100 1
execute as @e[tag=treanthealth,scores={Life=0}] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0 100 force
execute as @e[tag=treanthealth,scores={Life=0}] at @s run loot spawn ~ ~ ~ loot mb:entities/moss_guardian
execute as @e[tag=treanthealth,scores={Life=0}] at @s run summon experience_orb ~ ~ ~ {Value:15000}
execute as @e[tag=treanthealth,scores={Life=0}] at @s run tp @s ~ -500 ~
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @s