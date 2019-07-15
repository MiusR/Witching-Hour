execute as @p[tag=!hastaglockn] store result score @s Taglock run scoreboard players get tracker Taglock
execute if entity @a[tag=!hastaglockn] run scoreboard players add tracker Taglock 1
execute as @p[tag=!hastaglockn] run tag @s add hastaglockn