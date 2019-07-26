execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:13b}}] at @s if block ~ ~ ~ minecraft:oak_sapling if block ~1 ~ ~ minecraft:redstone_wire if block ~1 ~ ~1 minecraft:redstone_wire if block ~1 ~ ~-1 minecraft:redstone_wire if block ~-1 ~ ~ minecraft:redstone_wire if block ~-1 ~ ~1 minecraft:redstone_wire if block ~-1 ~ ~-1 minecraft:redstone_wire if block ~ ~ ~1 minecraft:redstone_wire if block ~ ~ ~-1 minecraft:redstone_wire run function mb:main/split/altarcraft
execute as @e[tag=magicaltar] at @s run function mb:main/split/altarcraft

execute as @e[tag=magicaltar,tag=activated,tag=!addedvex] at @s run function mb:main/split/altarspirits
execute as @e[tag=magicaltar,tag=activated,tag=addedvex] at @s run function mb:main/split/altarspirits

execute as @e[tag=magicaltar,tag=activated] at @s run function mb:main/split/altarpower

execute as @e[tag=magicaltar] run function mb:main/split/altarpowercost