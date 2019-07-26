execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}}] at @s run tag @s add botforest
execute as @e[tag=botforest,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["botforestf"],DisabledSlots:4144959}
execute as @e[tag=botforest,tag=!done] at @s run tag @s add done
execute as @e[tag=botforestf] at @s run tp @s @e[tag=botforest,limit=1,sort=nearest,distance=..1]
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[tag=tree] at @s run setblock ~ ~ ~ minecraft:oak_wood
execute as @e[tag=tree] at @s run scoreboard players add @s Life 1
execute as @e[tag=tree,scores={Life=400}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["oeakleaverp"],DisabledSlots:4144959}
execute as @e[tag=oeakleaverp,tag=!done] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 structure_void keep
execute as @e[tag=oeakleaverp,tag=!done] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["oakleaver"],DeathLootTable:"543532453"}
execute as @e[tag=oeakleaverp,tag=!done] at @s run tag @s add done
execute as @e[tag=oeakleaverp,tag=done] at @s unless entity @e[tag=oakleaver,distance=..3] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 oak_leaves replace air
execute as @e[tag=oeakleaverp,tag=done] at @s unless entity @e[tag=oakleaver,distance=..3] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace structure_void
execute as @e[tag=oeakleaverp,tag=done] at @s unless entity @e[tag=oakleaver,distance=..3] run kill @s
execute as @e[tag=tree,scores={Life=400..}] at @s run kill @e[type=item,distance=..10]
execute as @e[tag=tree,scores={Life=400..}] at @s run kill @s
execute as @e[tag=botforestf] at @s unless entity @e[tag=botforest,distance=..1] run kill @s