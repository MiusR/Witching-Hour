fill ~8 ~3 ~8 ~-8 ~3 ~-8 minecraft:magma_block keep
fill ~8 ~2 ~8 ~-8 ~2 ~-8 minecraft:bone_block keep
fill ~8 ~1 ~8 ~-8 ~1 ~-8 minecraft:bedrock keep
fill ~8 ~4 ~8 ~-8 ~4 ~-8 minecraft:dirt keep
fill ~8 ~5 ~8 ~-8 ~5 ~-8 minecraft:grass_block keep
execute as @e[tag=gen] at @s in the_nether run fill ~32 ~6 ~32 ~-32 ~7 ~-32 grass_block replace netherrack
execute as @e[tag=gen] at @s if block ~ ~ ~ obsidian run kill @s
execute as @e[tag=gen] at @s unless block ~ ~ ~ obsidian run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["tree_generator","structure"],DisabledSlots:4144959}
execute as @e[tag=gen] at @s unless block ~ ~ ~ obsidian run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["tree_generator","structure"],DisabledSlots:4144959}
execute as @e[tag=gen,sort=random,limit=1] at @s unless block ~ ~ ~ obsidian run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["fae_ring_generator","structure"],DisabledSlots:4144959}

execute as @e[tag=gen] at @s in the_nether unless block ~ ~ ~ obsidian run clone ~32 41 ~32 ~-32 42 ~-32 ~-32 ~6 ~-32 filtered minecraft:netherrack normal
execute as @e[tag=gen] at @s in the_nether run fill ~32 ~6 ~32 ~-32 ~7 ~-32 grass_block replace netherrack
execute as @e[tag=gen] at @s in the_nether unless block ~ ~ ~ obsidian run fill ~32 ~6 ~32 ~-32 ~6 ~-32 slime_block replace air
fill ~8 ~ ~8 ~-8 ~ ~-8 minecraft:obsidian

execute as @e[tag=structure] at @s run spreadplayers ~ ~ 17 17 false @s
execute as @e[tag=structure] at @s unless block ~ ~-1 ~ grass_block run spreadplayers ~ ~ 17 17 false @s

execute as @e[tag=structure] at @s if entity @e[tag=structure,distance=0.1..5,tag=!lake_generator] run kill @s 

execute as @e[tag=tree_generator,sort=random,limit=1] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"mb:acacia_tree",posX:-5,posY:0,posZ:-5,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=tree_generator,sort=random,limit=1] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"mb:swamp_tree1",posX:-5,posY:0,posZ:-5,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
execute as @e[tag=fae_ring_generator] at @s if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~ ~ minecraft:structure_block[mode=load]{name:"mb:faery_ring",rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b}

execute as @e[tag=tree_generator] at @s if block ~ ~ ~ structure_block run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 grass_block
execute as @e[tag=structure] at @s if block ~ ~-1 ~ minecraft:grass_block run setblock ~ ~1 ~ redstone_block
execute as @e[tag=structure] at @s run fill ~ ~ ~ ~ ~2 ~ air
execute as @e[tag=structure] at @s run kill @s


execute as @e[tag=gen,tag=!3Dterrain] at @s run tag @s add 3Dterrain
kill @e[tag=gen]

forceload remove all