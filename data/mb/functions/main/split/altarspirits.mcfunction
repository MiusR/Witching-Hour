execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"23456789",PersistenceRequired:1b,BoundX:0,BoundY:0,BoundZ:0,Tags:["inv","altar_spirit","normal"],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0.6},{Name:generic.attackDamage,Base:0}]}
execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"23456789",PersistenceRequired:1b,BoundX:0,BoundY:0,BoundZ:0,Tags:["inv","altar_spirit","normal"],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0.6},{Name:generic.attackDamage,Base:0}]}
execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"23456789",PersistenceRequired:1b,BoundX:0,BoundY:0,BoundZ:0,Tags:["inv","altar_spirit","normal"],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0.6},{Name:generic.attackDamage,Base:0}]}
execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s if entity @e[tag=altar_spirit,distance=..10] run tag @s add addedvex
execute as @e[tag=magicaltar,tag=activated,tag=addedvex] at @s unless entity @e[tag=altar_spirit,distance=..10] run tag @s remove addedvex
execute as @e[tag=altar_spirit,tag=!done] at @s store result entity @s BoundX int 1 run data get entity @s Pos[0]
execute as @e[tag=altar_spirit,tag=!done] at @s store result entity @s BoundY int 1 run data get entity @s Pos[1]
execute as @e[tag=altar_spirit,tag=!done] at @s store result entity @s BoundZ int 1 run data get entity @s Pos[2]
execute as @e[tag=altar_spirit,tag=!done] at @s run tag @s add done
execute as @e[tag=altar_spirit,tag=done,tag=normal] at @s run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 normal
execute as @e[tag=altar_spirit,tag=done] at @s unless entity @e[tag=magicaltar,tag=activated,distance=..10] run kill @s