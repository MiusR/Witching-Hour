execute as @s[tag=!start,tag=!projectile,tag=!touch,tag=!self] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"heaven_orchid"}}}] run tag @s add projectile





execute as @s[tag=!start,tag=!fire] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:fire_charge"}}] run tag @s add fire
execute as @s[tag=!start,tag=!frost] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ice"}}] run tag @s add frost
execute as @s[tag=!start,tag=!frost] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:feather"}}] run tag @s add air
execute as @s[tag=!start,tag=!warp] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ender_pearl"}}] run tag @s add warp
execute as @s[tag=!start,tag=!summon] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"spectral_dust"}}}] run tag @s add summon




execute as @s[tag=!start,tag=!aoe] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gunpowder"}}] run tag @s add aoe

execute as @s[tag=!start,tag=!invert] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond"}}] run tag @s add invert

execute as @s[tag=!start,tag=!gravity] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_wart"}}] run tag @s add gravity

execute as @s[tag=!start,tag=!offense] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:red_mushroom"}}] run tag @s add offense

execute as @s[tag=!start,tag=!defense] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper"}}] run tag @s add defense



execute as @s[tag=!start,tag=!hasitems] at @s if entity @e[type=item,distance=..1,nbt=!{Item:{tag:{id:"mysterious_dust"}}}] run tag @s add hasitems
execute as @s[tag=!start] at @s if entity @e[type=item,distance=..1,nbt=!{Item:{tag:{id:"mysterious_dust"}}}] run kill @e[type=item,distance=..1]