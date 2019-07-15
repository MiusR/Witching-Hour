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