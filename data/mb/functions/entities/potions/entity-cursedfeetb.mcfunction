execute as @e[type=minecraft:potion,nbt={Potion:{tag:{brewofcuresedfeet:1b}}},tag=!bocf] run tag @s add bocf
execute as @e[tag=bocf,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bocff"],DisabledSlots:4144959}
execute as @e[tag=bocf,tag=!done] at @s run tag @s add done
execute as @e[tag=bocff] at @s run tp @s @e[tag=bocf,limit=1,sort=nearest,distance=..2]
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run data merge entity @e[sort=random,limit=1,distance=..4,type=!player,type=!potion] {Motion:[0.0,1.5,0.0]}
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run data merge entity @e[sort=random,limit=1,distance=..4,type=!player,type=!potion] {Motion:[0.0,1.5,0.0]}
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run data merge entity @e[sort=random,limit=1,distance=..4,type=!player,type=!potion] {Motion:[0.0,1.5,0.0]}
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run data merge entity @e[sort=random,limit=1,distance=..4,type=!player,type=!potion] {Motion:[0.0,1.5,0.0]}
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run data merge entity @e[sort=random,limit=1,distance=..4,type=!player,type=!potion] {Motion:[0.0,1.5,0.0]}
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run effect give @a[distance=..3] minecraft:jump_boost 10 10
execute as @e[tag=bocff] at @s unless entity @e[tag=bocf,distance=..2] run kill @s