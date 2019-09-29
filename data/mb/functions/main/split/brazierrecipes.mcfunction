execute as @e[tag=brazier,tag=bone,tag=dark_oak,tag=lilotv,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bdeathlyvail
execute as @e[tag=brazier,tag=bone,tag=dark_oak,tag=lilotv,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 480
execute as @e[tag=brazier,tag=bone,tag=dark_oak,tag=lilotv,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1] mb_PowerCost 300
execute as @e[tag=brazier,tag=bdeathlyvail] at @s run particle minecraft:large_smoke ~ ~ ~ 10 5 10 0 20 force
execute as @e[tag=brazier,tag=bdeathlyvail] at @s run effect give @a[distance=..20,gamemode=survival] minecraft:blindness 2 255
execute as @e[tag=brazier,tag=bdeathlyvail,scores={braziertimer=0}] at @s run advancement grant @p only mb:brazier_ritual
execute as @e[tag=brazier,tag=bdeathlyvail,scores={braziertimer=0}] at @s run tag @s remove bdeathlyvail

execute as @e[tag=brazier,tag=gold_ingot,tag=chicken,tag=azure_bluet,tag=luck,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bssf
execute as @e[tag=brazier,tag=gold_ingot,tag=chicken,tag=azure_bluet,tag=luck,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 125
execute as @e[tag=brazier,tag=gold_ingot,tag=chicken,tag=azure_bluet,tag=luck,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1] mb_PowerCost 500
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run summon chicken ~ ~ ~ {DeathLootTable:"mb:entities/spectral_familiar",PersistenceRequired:1b,IsChickenJockey:0b,Motion:[0.0,1.0,0.0],Tags:["inv"],ArmorItems:[{},{},{},{}],ArmorDropChances:[0.85F,0.85F,0.85F,0.6F]}
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bssf,scores={braziertimer=0}] at @s run tag @s remove bssf

execute as @e[tag=brazier,tag=spectral_dust,tag=iron_ingot,tag=lilotv,tag=birch_log,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bsbanshee
execute as @e[tag=brazier,tag=spectral_dust,tag=iron_ingot,tag=lilotv,tag=birch_log,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 125
execute as @e[tag=brazier,tag=spectral_dust,tag=iron_ingot,tag=lilotv,tag=birch_log,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1] mb_PowerCost 300
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run summon zombie ~ ~ ~ {Silent:1b,DeathLootTable:"mb:entities/banshee",IsBaby:0b,Tags:["banshee","inv","slowf"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:128}}],ArmorDropChances:[0.85F,0.85F,0.5F,-327.67F],Attributes:[{Name:generic.movementSpeed,Base:0.001},{Name:generic.attackDamage,Base:0}],CustomName:"\"Banshee\""}
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run advancement grant @p only mb:brazier_ritual
execute as @e[tag=brazier,tag=bsbanshee,scores={braziertimer=0}] at @s run tag @s remove bsbanshee

execute as @e[tag=brazier,tag=lilotv,tag=bone,tag=azure_bluet,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if score traker Time matches 13000..23000 run tag @s add bsspectre
execute as @e[tag=brazier,tag=lilotv,tag=bone,tag=azure_bluet,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if score traker Time matches 13000..23000 run scoreboard players set @s braziertimer 125
execute as @e[tag=brazier,tag=lilotv,tag=bone,tag=azure_bluet,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if score traker Time matches 13000..23000 run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1] mb_PowerCost 100
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run summon phantom ~ ~10 ~ {Size:10}
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s run advancement grant @p only mb:brazier_ritual
execute as @e[tag=brazier,tag=bsspectre,scores={braziertimer=0}] at @s if score traker Time matches 13000..23000 run tag @s remove bsspectre

execute as @e[tag=brazier,tag=diamond,tag=iron_ingot,tag=dark_oak,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bssd
execute as @e[tag=brazier,tag=diamond,tag=iron_ingot,tag=dark_oak,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 125
execute as @e[tag=brazier,tag=diamond,tag=iron_ingot,tag=dark_oak,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1] mb_PowerCost 800
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run summon iron_golem ~ ~ ~ {Team:"UF",PersistenceRequired:1b,Tags:["inv","joinUF"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{display:{Name:"{\"text\":\"Spectral Dust\",\"color\":\"green\"}"},CustomModelData:127,id:"spectral_dust"}}],ArmorDropChances:[0.85F,0.85F,0.85F,0.6F]}
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bssd,scores={braziertimer=0}] at @s run tag @s remove bssd

execute as @e[tag=brazier,tag=dead_bush,tag=redstone,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run tag @s add bssh
execute as @e[tag=brazier,tag=dead_bush,tag=redstone,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @s braziertimer 125
execute as @e[tag=brazier,tag=dead_bush,tag=redstone,tag=spectral_dust,tag=ignited] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] run scoreboard players set @e[tag=magicaltar,distance=..20,limit=1] mb_PowerCost 400
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run summon skeleton ~ ~ ~ {Invulnerable:1b,CustomNameVisible:1b,Tags:["undeadh"],CustomName:"{\"text\":\"Undead Hunter\",\"color\":\"green\"}",HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[-327.67F,0.85F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:skeleton_skull",Count:1b}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,-327.67F],Attributes:[{Name:generic.followRange,Base:0}]}
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 10
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run advancement grant @p only mb:brazier_ritual
execute as @e[tag=brazier,tag=bssh,scores={braziertimer=0}] at @s run tag @s remove bssh