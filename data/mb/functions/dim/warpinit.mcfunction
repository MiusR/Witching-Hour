execute as @a[tag=movetoSoulDim] at @s in minecraft:the_nether run tp @s ~ 160 ~
effect give @a[tag=movetoSoulDim] minecraft:slow_falling 10 2
effect give @a[tag=movetoSoulDim] minecraft:blindness 10 6
playsound minecraft:ui.toast.challenge_complete master @a[tag=movetoSoulDim] ~ ~ ~ 100 1
kill @e[tag=gen]

execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute at @e[tag=movetoSoulDim] run forceload add ~-100 ~-100 ~100 ~100
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~ ~ ~48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~ ~ ~-48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~48 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~-48 ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~-48 ~ ~48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~-48 ~ ~-48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~48 ~ ~48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:area_effect_cloud ~48 ~ ~-48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["TerrainMaster","gen"]}
execute as @e[tag=TerrainMaster] at @s in minecraft:the_nether align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ 128 ~
execute as @e[tag=TerrainMaster] at @s in the_nether run function mb:dim/nodeplacment
execute as @a[tag=movetoSoulDim] at @s in the_nether run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,Tags:["souldimfence"],DisabledSlots:4144959}
tellraw @a[tag=movetoSoulDim] {"text":"Custom trees made by Nilzzz!","color":"light_purple","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/project/tree-presets-10-done/"}}
execute as @a[tag=movetoSoulDim] at @s run tag @s add inSoulDim
scoreboard players set @a[tag=inSoulDim] spiritRealmTimer 6000
execute as @a[tag=movetoSoulDim] at @s run tag @s remove movetoSoulDim

