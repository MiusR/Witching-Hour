execute as @e[tag=undeadh] run scoreboard players add @s Life 1
execute as @e[tag=undeadh,scores={Life=10000..}] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 20
execute as @e[tag=undeadh,scores={Life=10000..}] at @s run tp @s ~ -250 ~
execute as @e[tag=undeadh,scores={Life=10000..}] run kill @s