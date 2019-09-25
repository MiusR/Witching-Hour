execute as @e[type=item,nbt={Item:{tag:{id:"roots"},Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blue_orchid",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},distance=..1] if block ~ ~ ~ cauldron[level=3] unless entity @e[tag=cauldron,distance=..1] run summon leash_knot ~ ~ ~ {Tags:["mcc"]}
execute as @e[tag=mcc] at @s run kill @e[type=item,distance=..1]
execute as @e[tag=mcc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["cauldron"],ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:131}}],DisabledSlots:4144959}
execute as @e[tag=mcc] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=mcc] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3
execute as @e[tag=mcc] run kill @s
execute as @e[tag=cauldron] at @s if block ~ ~ ~ air run kill @s
execute as @e[tag=cauldron] at @s run function mb:main/split/cauldronmisc