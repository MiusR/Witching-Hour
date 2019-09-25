execute as @e[tag=roue] at @s unless block ~ ~ ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~20 ~ masked move
execute as @e[tag=roue,tag=!done] at @s if block ~ ~-0.22 ~ minecraft:bedrock run tag @s add done
execute as @e[tag=roue,tag=done] at @s run setblock ~ ~-0.22 ~ air
execute as @e[tag=roue,tag=done] at @s run kill @s
execute as @e[tag=roue,tag=!moveup20large] at @s run tp @s ~ ~-0.01 ~
execute as @e[tag=roue,tag=moveup20large] at @s run tp @s ~ ~-0.004 ~
execute as @e[tag=moveup20small] at @s run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force
execute as @e[tag=moveup20medium] at @s run particle minecraft:end_rod ^ ^ ^8 0 0 0 0 1 force
execute as @e[tag=moveup20small] at @s run particle minecraft:end_rod ^ ^ ^-5 0 0 0 0 1 force
execute as @e[tag=moveup20medium] at @s run particle minecraft:end_rod ^ ^ ^-8 0 0 0 0 1 force
execute as @e[tag=moveup20small] at @s run particle minecraft:end_rod ^5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=moveup20medium] at @s run particle minecraft:end_rod ^8 ^ ^ 0 0 0 0 1 force
execute as @e[tag=moveup20small] at @s run particle minecraft:end_rod ^-5 ^ ^ 0 0 0 0 1 force
execute as @e[tag=moveup20medium] at @s run particle minecraft:end_rod ^-8 ^ ^ 0 0 0 0 1 force
execute as @e[tag=moveup20large] at @s run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force
execute as @e[tag=moveup20large] at @s run particle minecraft:end_rod ^ ^ ^-11 0 0 0 0 1 force
execute as @e[tag=moveup20large] at @s run particle minecraft:end_rod ^11 ^ ^ 0 0 0 0 1 force
execute as @e[tag=moveup20large] at @s run particle minecraft:end_rod ^-11 ^ ^ 0 0 0 0 1 force