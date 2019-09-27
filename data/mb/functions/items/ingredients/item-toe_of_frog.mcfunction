execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{id:"living_flame"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire if entity @e[type=item,distance=..1,nbt={Item:{tag:{id:"horror_dust"}}}] run tag @s add rsf
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rsf] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rsf,tag=done] at @s run scoreboard players set @e[tag=magicaltar,distance=..20,scores={Power=400..},limit=1] mb_PowerCost 400
execute as @e[type=armor_stand,tag=cauldron,tag=rsf] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsf] at @s run summon slime ~ ~1 ~ {DeathLootTable:"56789",AbsorptionAmount:5f,Size:0,Tags:["inv","frog"],Attributes:[{Name:generic.attackDamage,Base:0},{Name:generic.followRange,Base:0}]}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsf] at @s run tag @s remove rsf