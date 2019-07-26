execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_ender_chaos"}}}] at @s run tag @s add boec
execute as @e[tag=boec,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["boecf"],DisabledSlots:4144959}
execute as @e[tag=boec,tag=!done] at @s run tag @s add done
execute as @e[tag=boecf] at @s run tp @s @e[tag=boec,limit=1,sort=nearest,distance=..1]
execute as @e[tag=boecf] at @s unless entity @e[tag=boec,distance=..1] run tag @e[distance=..3,type=!potion,type=!armor_stand] add enderchaos
execute as @e[tag=boecf] at @s unless entity @e[tag=boec,distance=..1] run kill @s