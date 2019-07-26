execute as @e[tag=treantheaddown] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add beam
execute as @e[tag=treantmovment] at @s if entity @e[tag=treanthealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add tcab1
execute as @e[tag=treantmovment,tag=tcab1] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=beam] run scoreboard players add @s ADTT 1
execute as @e[tag=beam,scores={ADTT=..5}] at @s run tp ~ ~-0.1 ~
execute as @e[tag=beam,scores={ADTT=..1}] at @s run playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 100
execute as @e[tag=beam,scores={ADTT=5..}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["treantp"],DisabledSlots:4144959}
execute as @e[tag=treantp,tag=!done] at @s run tp @s @e[limit=1,tag=treantmovment,sort=nearest]
execute as @e[tag=treantp,tag=!done] at @s run tp @s ~ ~2.2 ~
execute as @e[tag=treantp,tag=!done] at @s run tag @s add done
execute as @e[tag=treantp] at @s run tp @s ^ ^ ^1
execute as @e[tag=treantp,scores={Life=5..}] at @s run tp @s ~ ~-0.2 ~
execute as @e[tag=treantp] at @s run particle minecraft:composter ~ ~ ~ 0.3 0.3 0.3 0 10 force
execute as @e[tag=treantp] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=treantp] at @s run scoreboard players add @s Life 1
execute as @e[tag=treantp,scores={Life=50..}] at @s run kill @s
execute as @e[tag=treantp] at @s run effect give @p[distance=..3,nbt={ActiveEffects:[{Id:19b,Amplifier:2b}]}] minecraft:poison 4 2 true
execute as @e[tag=beam,scores={ADTT=120..}] at @s run tag @e[distance=..2] remove tcab1
execute as @e[tag=beam,scores={ADTT=120..}] at @s run tag @s remove beam
execute as @e[tag=treantheaddown,scores={ADTT=120..}] at @s run scoreboard players reset @s ADTT