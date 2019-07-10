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
execute as @e[tag=eehealth] at @s unless score @s Life = @s LHBH run playsound minecraft:entity.iron_golem.hurt master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=eehealth] store result score @s LHBH run data get entity @s AbsorptionAmount

execute as @e[tag=eehealth] at @s unless entity @e[tag=cab,distance=..2] unless entity @e[tag=cab1,distance=..1] unless entity @e[tag=cab2,distance=..2] run scoreboard players add @s AT 1
scoreboard players add @e[tag=eehealth] Random 1

execute as @e[tag=eerighth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add pillars
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add cab
execute as @e[tag=eemovment,tag=cab] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=eerighth,tag=pillars] at @s run tp @s ~ ~-2 ~
execute as @e[tag=eerighth,tag=pillars] at @s run playsound minecraft:entity.armor_stand.break master @a[distance=..20] ~ ~ ~ 100 1
execute at @a unless block ~ ~-1 ~ minecraft:air as @e[tag=eerighth,tag=pillars,distance=..20] run fill ~ ~-1 ~ ~ ~3 ~ minecraft:stone
execute as @e[tag=eerighth,tag=pillars] at @s run tag @s remove pillars
execute as @e[tag=eerighth] at @s if entity @e[tag=eemovment,sort=nearest,distance=..3,tag=cab] run tp @s ~ ~0.2 ~
execute as @e[tag=eemovment] at @s if entity @e[tag=eerighth,distance=..2] run tag @s remove cab

execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add cab1
execute as @e[tag=eemovment,tag=cab1] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=eerighth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add gravtrap
execute as @e[tag=eelefth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add gravtrap
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run playsound minecraft:block.end_portal.spawn master @a[distance=..40] ~ ~ ~ 100 0
execute as @e[tag=gravtrap] at @s run tp @s ~ ~ ~ ~70 ~
execute as @e[tag=eemovment] at @s if entity @e[tag=gravtrap,distance=..2] run particle minecraft:enchant ~ ~2 ~ 0 0 0 10 100 force
execute as @e[tag=gravtrap] at @s run scoreboard players add @s ADT 1
execute as @a at @s if entity @e[tag=gravtrap,distance=..10,scores={ADT=50..}] run effect give @s[] minecraft:wither 2 2 true
execute as @a at @s if entity @e[tag=gravtrap,distance=..10] run effect give @e[] minecraft:slowness 2 4 true
execute as @e[tag=eemovment] at @s if entity @e[tag=gravtrap,scores={ADT=150..},distance=..2] run tag @s remove cab1
execute as @e[tag=gravtrap,scores={ADT=150..}] run scoreboard players reset @s ADT
execute as @e[tag=gravtrap] at @s if entity @e[tag=eemovment,tag=!cab1,distance=..2] run tag @s remove gravtrap

execute as @e[tag=eelefth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add pebble
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add cab2
execute as @e[tag=eemovment,tag=cab2] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run playsound minecraft:block.anvil.place master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=pebble] at @s run particle minecraft:dust 0 0.5 1 1 ~ ~2 ~ 1 1 1 0 300 force
execute as @a at @s if entity @e[tag=pebble,distance=..20] run summon falling_block ~ ~5 ~ {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:9,FallHurtAmount:9f,Tags:["pebbleproj"]}
tag @e[tag=pebble,x_rotation=0] remove pebble
execute as @e[tag=pebble] at @s run tag @s remove pebble
execute as @e[tag=eemovment] at @s if entity @e[tag=eelefth,x_rotation=0] run tag @s remove cab2

execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=25..32}] run tag @s add ssilverf
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=25..32}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=ssilverf] at @s run scoreboard players add @s ADT 1
execute as @e[tag=ssilverf] at @s run summon zombie ~ ~ ~ {Health:1f,IsBaby:1b,Tags:["fr"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:40,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1}]}
execute as @e[type=silverfish,tag=eessf] at @s if entity @e[tag=ssilverf,distance=..20] run spreadplayers ~ ~ 3 10 false @s
execute as @e[tag=ssilverf,scores={ADT=20..}] at @s run tag @s add donu
execute as @e[tag=ssilverf,tag=donu] at @s run scoreboard players reset @s ADT
execute as @e[tag=ssilverf,tag=donu] at @s run tag @s remove ssilverf
execute as @e[tag=donu] at @s run tag @s remove donu





scoreboard players reset @e[tag=eehealth,scores={AT=100..}] AT
scoreboard players reset @e[tag=eehealth,scores={Random=32..}] Random
execute as @e[tag=eemovment,tag=!cab,tag=!cab1,tag=!cab2] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=eemovment] at @s run tp @e[tag=eehealth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eehealth] at @s run tp @e[tag=eetorso,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eehealth] at @s run tp @e[tag=eehead,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eemovment] at @s run tp @e[tag=eerighth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eemovment] at @s run tp @e[tag=eelefth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eemovment] at @s run tp @e[tag=eerighth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] ~ ~ ~ ~ 0
execute as @e[tag=eemovment] at @s run tp @e[tag=eelefth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] ~ ~ ~ ~ 0