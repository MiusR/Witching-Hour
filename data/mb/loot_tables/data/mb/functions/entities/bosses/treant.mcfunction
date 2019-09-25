execute as @a[nbt={SelectedItem:{id: "minecraft:glowstone_dust", Count: 1b, tag: {naturecore: 1b, CustomModelData: 101, display: {Name: "{\"text\":\"Nature's Core\",\"color\":\"green\"}"}}}}] at @s run function mb:main/split/itemnaturecore
execute as @e[tag=treanthealth,tag=!summoned] at @s run function mb:main/split/summontreant

execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,scores={Life=0},distance=..2] run function mb:main/split/summontreant
execute as @e[tag=treanthealth,scores={Life=0}] at @s run function mb:main/split/summontreant

execute as @e[tag=treanthealth] at @s unless score @s Life = @s LHBH run playsound minecraft:entity.armor_stand.hit master @a[distance=..40] ~ ~ ~ 100 1
execute as @e[tag=treanthealth] store result score @s LHBH run data get entity @s AbsorptionAmount

execute as @e[tag=treanthealth] at @s unless entity @e[tag=tcab,distance=..2] unless entity @e[tag=tcab1,distance=..2] unless entity @e[tag=tcab2,distance=..2] run scoreboard players add @s AT 1
scoreboard players add @e[tag=treanthealth] Random 1

execute as @e[tag=treanttorso] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run function mb:main/split/treantability1
execute as @e[tag=root] at @s run function mb:main/split/treantability1

execute as @e[tag=treantheaddown] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run function mb:main/split/treantability2
execute as @e[tag=treantheaddown,tag=beam] at @s run function mb:main/split/treantability2
execute as @e[tag=treantp] at @s run function mb:main/split/treantability2

execute as @e[tag=treanttorso] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run function mb:main/split/treantability3
execute as @e[tag=tflower] at @s run function mb:main/split/treantability3
execute as @e[tag=treantbloom] at @s run function mb:main/split/treantability3

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