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