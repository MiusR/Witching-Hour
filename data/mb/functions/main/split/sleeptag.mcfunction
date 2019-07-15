execute as @a at @s if data entity @s SleepingX run tag @s add issleeping
execute as @a at @s unless data entity @s SleepingX run tag @s remove issleeping
execute as @e[tag=taggedbed] at @s unless block ~ ~-0.3 ~ #minecraft:beds run kill @s
execute as @a[tag=issleeping] at @s unless entity @e[distance=..1,tag=taggedbed,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["taggedbed"],DisabledSlots:4144959}
execute as @e[tag=taggedbed] at @s if entity @p[distance=..1,tag=issleeping] store result score @s Taglock run scoreboard players get @p[distance=..1,limit=1,tag=issleeping] Taglock
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if entity @e[distance=..2,tag=taggedbed] store result entity @s Item.tag.taglockdata int 1 run scoreboard players get @e[tag=taggedbed,distance=..2,limit=1] Taglock
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if entity @e[distance=..2,tag=taggedbed] run data merge entity @s {Item:{tag:{CustomModelData:18}}}
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if entity @e[distance=..2,tag=taggedbed] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 20
execute as @e[tag=taggedbed] at @s if entity @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] run kill @s