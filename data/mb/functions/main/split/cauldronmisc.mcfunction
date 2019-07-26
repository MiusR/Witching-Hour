execute as @e[type=armor_stand,tag=cauldron,tag=timer] at @s run scoreboard players add @s Timer 1
execute as @e[tag=cauldron,tag=timer] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 1
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=48..}] at @s run tag @s add done
execute as @e[type=item,tag=!nosplash] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run playsound minecraft:entity.boat.paddle_water master @a[distance=..10] ~ ~ ~ 100 1
execute as @e[type=item,tag=!nosplash] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run particle minecraft:rain ~ ~ ~ 0 0 0 1 40
execute as @e[type=item] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run tag @s add nosplash

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1] if block ~ ~ ~ cauldron[level=3] if block ~ ~-1 ~ fire run function mb:main/split/cauldroncraft
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run function mb:main/split/cauldroncraft

execute as @e[tag=cauldron] at @s if entity @r[scores={Random12=12}] if block ~ ~ ~ cauldron[level=3] if block ~ ~-1 ~ fire run particle minecraft:campfire_signal_smoke ~ ~0.3 ~ 0 0.5 0 0.1 0
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run setblock ~ ~ ~ cauldron[level=0]
execute as @e[type=armor_stand,tag=cauldron,tag=done] at @s run tag @s remove done
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=1..}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:132}}]}
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=0}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:131}}]}
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=1}] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=48..}] at @s run tag @s remove timer
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=48..}] at @s run scoreboard players set @s Timer 0