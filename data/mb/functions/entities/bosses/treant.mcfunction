execute as @a[nbt={SelectedItem:{id: "minecraft:glowstone_dust", Count: 1b, tag: {naturecore: 1b, CustomModelData: 101, display: {Name: "{\"text\":\"Nature's Core\",\"color\":\"green\"}"}}}}] at @s run effect give @s resistance 2 100 true
execute as @a[nbt={SelectedItem:{id: "minecraft:glowstone_dust", Count: 1b, tag: {naturecore: 1b, CustomModelData: 101, display: {Name: "{\"text\":\"Nature's Core\",\"color\":\"green\"}"}}}}] at @s run effect give @s slowness 2 1 true
execute as @a[nbt={SelectedItem:{id: "minecraft:glowstone_dust", Count: 1b, tag: {naturecore: 1b, CustomModelData: 101, display: {Name: "{\"text\":\"Nature's Core\",\"color\":\"green\"}"}}}}] at @s run effect give @s jump_boost 2 250 true
execute as @a[nbt={SelectedItem:{id: "minecraft:glowstone_dust", Count: 1b, tag: {naturecore: 1b, CustomModelData: 101, display: {Name: "{\"text\":\"Nature's Core\",\"color\":\"green\"}"}}}}] at @s run particle minecraft:totem_of_undying ~ ~3 ~ 0.2 0.2 0.2 1 10 force
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
execute as @e[tag=treanthealth,scores={Life=0}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:101,naturecore:1b,display:{Name:"{\"text\":\"Nature's Core\",\"color\":\"green\"}"}}}}
execute as @e[tag=treanthealth,scores={Life=0}] at @s run summon experience_orb ~ ~ ~ {Value:15000}
execute as @e[tag=treanthealth,scores={Life=0}] at @s run tp @s ~ -500 ~
execute as @e[tag=treanthealth,scores={Life=0}] at @s run kill @s
execute as @e[tag=treanthealth] at @s unless score @s Life = @s LHBH run playsound minecraft:entity.armor_stand.hit master @a[distance=..40] ~ ~ ~ 100 1
execute as @e[tag=treanthealth] store result score @s LHBH run data get entity @s AbsorptionAmount

execute as @e[tag=treanthealth] at @s unless entity @e[tag=tcab,distance=..2] unless entity @e[tag=tcab1,distance=..2] unless entity @e[tag=tcab2,distance=..2] run scoreboard players add @s AT 1
scoreboard players add @e[tag=treanthealth] Random 1

execute as @e[tag=treanttorso] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add roots
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run tag @s add tcab
execute as @e[tag=treantmovment,tag=tcab] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=roots] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["fnp","root"],DisabledSlots:4144959}
execute as @e[tag=root,scores={Life=..20}] at @s run tp @s ~ ~1 ~
execute as @e[tag=root] at @s run tp @s ^ ^ ^1
scoreboard players add @e[tag=root] Life 1
execute as @e[tag=root] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=root,scores={Life=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;65280]}]}}}}
execute as @e[tag=root,scores={Life=30..}] at @s run kill @s
execute as @e[tag=root] at @s if entity @p[distance=..2] run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["inv"]}
execute as @e[tag=root] at @s if entity @p[distance=..2] run kill @s
execute as @e[tag=root] at @s run particle minecraft:block minecraft:oak_leaves ~ ~ ~ 0.2 0.2 0.2 0 5 force
tag @e[tag=tcab] remove tcab
tag @e[tag=roots] remove roots

execute as @e[tag=treantheaddown] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add beam
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add tcab1
execute as @e[tag=treantmovment,tag=tcab1] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=beam] run scoreboard players add @s ADTT 1
execute as @e[tag=beam,scores={ADTT=..5}] at @s run tp ~ ~-0.1 ~
execute as @e[tag=beam,scores={ADTT=..1}] at @s run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 100
execute as @e[tag=beam,scores={ADTT=5..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["treantp"],DisabledSlots:4144959}
execute as @e[tag=treantp,tag=!done] at @s run tp @s @e[limit=1,tag=treantmovment,sort=nearest]
execute as @e[tag=treantp,tag=!done] at @s run tp @s ~ ~2.2 ~
execute as @e[tag=treantp,tag=!done] at @s run tag @s add done
execute as @e[tag=treantp] at @s run tp @s ^ ^ ^1
execute as @e[tag=treantp,scores={Life=5..}] at @s run tp @s ~ ~-0.2 ~
execute as @e[tag=treantp] at @s run particle minecraft:composter ~ ~ ~ 0.3 0.3 0.3 0 10 force
execute as @e[tag=treantp] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=treantp] at @s run scoreboard players add @s Life 1
execute as @e[tag=treantp,scores={Life=50..}] at @s run kill @s
execute as @e[tag=treantp] at @s run effect give @p[distance=..3,nbt={ActiveEffects:[{Id:19b,Amplifier:2b}]}] minecraft:poison 4 2 true
execute as @e[tag=beam,scores={ADTT=30..}] at @s run tag @e[distance=..2] remove tcab1
execute as @e[tag=beam,scores={ADTT=30..}] at @s run tag @s remove beam
execute as @e[tag=treantheaddown,scores={ADTT=30..}] at @s run scoreboard players reset @s ADTT

execute as @e[tag=treanttorso] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add tbloom
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add tcab2
execute as @e[tag=treantmovment,tag=tcab2] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=tbloom] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["tflower"],DisabledSlots:4144959}
execute as @e[tag=tflower] at @s run spreadplayers ~ ~ 5 10 false @s
execute as @e[tag=tflower] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:oak_log
execute as @e[tag=tflower] at @s run summon end_crystal ~ ~4 ~ {ShowBottom:0b,Tags:["treantbloom"]}
execute as @e[tag=tflower] at @s run kill @s
execute as @e[tag=tbloom] run tag @s remove tbloom
execute as @e[tag=tcab2] run tag @s remove tcab2
execute as @e[tag=treanthealth] at @s if entity @e[tag=treantbloom,distance=..30] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=treanthealth] at @s unless entity @e[tag=treantbloom,distance=..30] run data merge entity @s {Invulnerable:0b}
execute as @e[tag=treanthealth] at @s if entity @e[tag=treantbloom,distance=..30] run particle minecraft:totem_of_undying ~ ~5 ~ 2 1 2 0 30 force
execute at @e[tag=treanthealth] as @a[distance=..40] if entity @e[tag=treantbloom,distance=..30] run title @s actionbar {"text":"Destroy the Crystal!","color":"red"}




scoreboard players reset @e[tag=treanthealth,scores={AT=100..}] AT
scoreboard players reset @e[tag=treanthealth,scores={Random=32..}] Random
execute as @e[tag=treantmovment,tag=!tcab,tag=!tcab1,tag=!tcab2] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=treantlegbackleft,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=treantlegbackright,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=treantlegfrontleft,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=treantlegfrontright,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=treanthealth] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treanttorso] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantheadup] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantheaddown] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantlegbackleft] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantlegbackright] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantlegfrontleft] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantlegfrontright] at @s run tp @s @e[tag=treantmovment,distance=..3,sort=nearest,limit=1,tag=!tcab,tag=!tcab1,tag=!tcab2,tag=!cab3]
execute as @e[tag=treantmovment] at @s unless entity @e[tag=treanthealth,distance=..3] run tp @s ~ -500 ~
execute as @e[tag=treanthealth] at @s unless entity @e[tag=treantmovment,distance=..3] run summon slime ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"45678",PersistenceRequired:1b,IsBaby:0b,Tags:["inv","treantmovment","fr"],ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b}],Attributes:[{Name:generic.knockbackResistance,Base:100},{Name:generic.attackDamage,Base:4}],Size:7}