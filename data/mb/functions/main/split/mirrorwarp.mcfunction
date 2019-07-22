execute as @e[tag=warpip,tag=init] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.03 1
execute as @e[tag=warpip,tag=init] at @s run tp @s ^ ^ ^0.7
execute as @e[tag=warpip,tag=init] at @s run scoreboard players add @s Life 1
execute as @e[tag=warpip,tag=init] at @s unless block ~ ~ ~ air run tag @s add done
execute as @e[tag=warpip,tag=init,scores={Life=4..}] at @s run tag @s add done
execute as @e[tag=warpip,tag=init,tag=done] at @s run tp @p[tag=warpi] @s
execute as @e[tag=warpip,tag=init,tag=done] at @s run tp @p[tag=warpi] ~ ~0.1 ~
execute as @e[tag=warpip,tag=init,tag=done] at @s run effect give @p[tag=warpi] minecraft:slow_falling 10 1 true
execute as @e[tag=warpip,tag=init,tag=done] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 50
execute as @e[tag=warpip,tag=init,tag=done] at @s run tag @p remove warpi
execute as @e[tag=warpip,tag=init,tag=done] at @s run tag @p remove lockedwarp
execute as @e[tag=warpip,tag=init,tag=done] at @s run kill @s
