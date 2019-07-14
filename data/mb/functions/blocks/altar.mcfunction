execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:13b}}] at @s if block ~ ~ ~ minecraft:oak_sapling if block ~1 ~ ~ minecraft:redstone_wire if block ~1 ~ ~1 minecraft:redstone_wire if block ~1 ~ ~-1 minecraft:redstone_wire if block ~-1 ~ ~ minecraft:redstone_wire if block ~-1 ~ ~1 minecraft:redstone_wire if block ~-1 ~ ~-1 minecraft:redstone_wire if block ~ ~ ~1 minecraft:redstone_wire if block ~ ~ ~-1 minecraft:redstone_wire run tag @s add treealtar
execute as @e[tag=treealtar] at @s run playsound minecraft:block.bell.use master @a[distance=..30] ~ ~ ~ 100 2
execute as @e[tag=treealtar] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 2 1000
execute as @e[tag=treealtar] at @s run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"mb:tree_altar",posX:-2,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b}
execute as @e[tag=treealtar] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[tag=treealtar] at @s run kill @s
execute as @e[tag=magicaltar] at @s if block ~ ~1 ~ air if block ~ ~-1 ~ air if block ~ ~ ~ air run kill @s
execute as @e[tag=magicaltar,tag=!stage2,tag=!activated] at @s if entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"mb:tree_altar_open",posX:-2,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=magicaltar,tag=!stage2,tag=!activated] at @s if entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[tag=magicaltar,tag=!stage2,tag=!activated] at @s if entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] run particle minecraft:composter ~ ~ ~ 1 1 1 0 10
execute as @e[tag=magicaltar,tag=!stage2,tag=!activated] at @s if entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] run playsound minecraft:entity.armor_stand.break master @a[distance=..20] ~ ~ ~ 10 1
scoreboard players add @e[tag=magicaltar] PTD 1
execute as @e[tag=magicaltar,tag=!stage2,tag=!activated] at @s if entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] run tag @s add stage2
execute as @e[tag=magicaltar,tag=stage2,tag=!activated,scores={PTD=30}] at @s unless entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run setblock ~ ~-1 ~ minecraft:structure_block[mode=load]{name:"mb:tree_altar",posX:-2,posY:0,posZ:-2,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b}
execute as @e[tag=magicaltar,tag=stage2,tag=!activated,scores={PTD=30}] at @s unless entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run setblock ~ ~-2 ~ minecraft:redstone_block
execute as @e[tag=magicaltar,tag=stage2,tag=!activated,scores={PTD=30}] at @s unless entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:composter ~ ~ ~ 1 1 1 0 10
execute as @e[tag=magicaltar,tag=stage2,tag=!activated,scores={PTD=30}] at @s unless entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] unless entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run playsound minecraft:entity.armor_stand.break master @a[distance=..20] ~ ~ ~ 10 1
execute as @e[tag=magicaltar,tag=!activated] at @s run setblock ~ ~-2 ~ grass_block
scoreboard players set @e[tag=magicaltar,tag=!activated] MaxPower 1000
execute as @e[tag=magicaltar,tag=stage2,tag=!activated] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run playsound minecraft:ui.toast.challenge_complete master @a[distance=..20] ~ ~ ~ 1 1
execute as @e[tag=magicaltar,tag=stage2,tag=!activated] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run tag @s add activated
execute as @e[tag=magicaltar,tag=stage2,tag=activated,tag=!completed] at @s run kill @e[type=item,distance=..2]
execute as @e[tag=magicaltar,tag=stage2,tag=activated,tag=!completed] at @s run tag @s add completed
execute as @e[tag=magicaltar,tag=stage2,tag=!activated,scores={PTD=30}] at @s unless entity @p[distance=..10,nbt={SelectedItem:{id:"minecraft:emerald"}}] run tag @s remove stage2

execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"23456789",PersistenceRequired:1b,BoundX:0,BoundY:0,BoundZ:0,Tags:["inv","altar_spirit","normal"],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0.6},{Name:generic.attackDamage,Base:0}]}
execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"23456789",PersistenceRequired:1b,BoundX:0,BoundY:0,BoundZ:0,Tags:["inv","altar_spirit","normal"],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0.6},{Name:generic.attackDamage,Base:0}]}
execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run summon minecraft:vex ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"23456789",PersistenceRequired:1b,BoundX:0,BoundY:0,BoundZ:0,Tags:["inv","altar_spirit","normal"],Attributes:[{Name:generic.followRange,Base:0},{Name:generic.movementSpeed,Base:0.6},{Name:generic.attackDamage,Base:0}]}
execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s if entity @e[tag=altar_spirit,distance=..20] run tag @s add addedvex
execute as @e[tag=magicaltar,tag=activated,tag=addedvex] at @s unless entity @e[tag=altar_spirit,distance=..20] run tag @s remove addedvex
execute as @e[tag=altar_spirit,tag=!done] at @s store result entity @s BoundX int 1 run data get entity @s Pos[0]
execute as @e[tag=altar_spirit,tag=!done] at @s store result entity @s BoundY int 1 run data get entity @s Pos[1]
execute as @e[tag=altar_spirit,tag=!done] at @s store result entity @s BoundZ int 1 run data get entity @s Pos[2]
execute as @e[tag=altar_spirit,tag=!done] at @s run tag @s add done
execute as @e[tag=altar_spirit,tag=done,tag=normal] at @s run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 normal
execute as @e[tag=altar_spirit,tag=done] at @s unless entity @e[tag=magicaltar,tag=activated,distance=..20] run kill @s

execute as @e[tag=magicaltar,tag=activated,scores={PTD=30..}] at @s run particle minecraft:enchant ~ ~1 ~ 0 0 0 3 5 force
execute as @e[tag=magicaltar,tag=activated,scores={PTD=30}] unless score @s Power = @s MaxPower run scoreboard players add @s Power 1
scoreboard players reset @e[tag=magicaltar,scores={PTD=30..}] PTD
execute as @a[] at @s if entity @e[tag=magicaltar,distance=..4,tag=activated] run scoreboard players operation @s Power = @e[tag=magicaltar,distance=..4] Power
execute as @a[] at @s if entity @e[tag=magicaltar,distance=..4,tag=activated] run scoreboard players operation @s MaxPower = @e[tag=magicaltar,distance=..4] MaxPower
execute as @a[] at @s if entity @e[tag=magicaltar,distance=..4,tag=activated] run title @s actionbar [{"score":{"name":"*","objective":"Power"},"color":"dark_green","bold":"true"},{"text":" / ","color":"reset"},{"score":{"name":"*","objective":"MaxPower"},"color":"dark_red","bold":"true"}]
execute as @e[tag=magicaltar,scores={Power=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] run summon item ~ ~ ~ {Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1,display:{Name:"{\"text\":\"Magic Bottle\",\"color\":\"green\"}"}}}}
execute as @e[tag=magicaltar,scores={Power=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] run scoreboard players remove @s Power 1
execute as @e[tag=magicaltar,scores={Power=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] run kill @e[type=item,distance=..2,nbt=!{Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}]
execute as @e[tag=magicaltar,tag=rea] run scoreboard players remove @s Power 15
execute as @e[tag=magicaltar,tag=rea] run tag @s remove rea
execute as @e[tag=magicaltar,tag=rlp] run scoreboard players remove @s Power 250
execute as @e[tag=magicaltar,tag=rlp] run tag @s remove rlp
execute as @e[tag=magicaltar,tag=rpo] run scoreboard players remove @s Power 5
execute as @e[tag=magicaltar,tag=rpo] run tag @s remove rpo
execute as @e[tag=magicaltar,tag=rorain] run scoreboard players remove @s Power 50
execute as @e[tag=magicaltar,tag=rorain] run tag @s remove rorain
execute as @e[tag=magicaltar,tag=rohorizon] run scoreboard players remove @s Power 300
execute as @e[tag=magicaltar,tag=rohorizon] run tag @s remove rohorizon
execute as @e[tag=magicaltar,tag=demonsummon] run scoreboard players remove @s Power 500
execute as @e[tag=magicaltar,tag=demonsummon] run tag @s remove demonsummon
execute as @e[tag=magicaltar,tag=fortunecost] run scoreboard players remove @s Power 200
execute as @e[tag=magicaltar,tag=fortunecost] run tag @s remove fortunecost
execute as @e[tag=magicaltar,tag=infusioncost] run scoreboard players remove @s Power 1000
execute as @e[tag=magicaltar,tag=infusioncost] run tag @s remove infusioncost