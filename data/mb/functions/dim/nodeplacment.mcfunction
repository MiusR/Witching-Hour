execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~16 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}
execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~-16 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}

execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~ ~ ~-16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}
execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~ ~ ~16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}

execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~16 ~ ~16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}
execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~16 ~ ~-16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}
execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~-16 ~ ~16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}
execute as @e[tag=TerrainMaster,tag=!summoned] at @s run summon minecraft:area_effect_cloud ~-16 ~ ~-16 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainNode","gen"]}
tag @e[tag=TerrainMaster] add summoned

execute as @e[tag=gen] at @s run function mb:dim/flatgen
