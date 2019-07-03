execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_volitatility"}}},tag=!bov] at @s run tag @s add bov
execute as @e[tag=bov,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bovf"],DisabledSlots:4144959}
execute as @e[tag=bov,tag=!done] at @s run tag @s add done
execute as @e[tag=bovf] at @s run tp @s @e[tag=bov,limit=1,sort=nearest,distance=..1]
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.0,1.0,0.0]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.5,1.0,0.0]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[-0.5,1.0,0.0]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.0,1.0,0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.0,1.0,-0.5]}

execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.5,1.0,0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[-0.5,1.0,0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.5,1.0,0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.5,1.0,-0.5]}

execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[0.5,1.0,-0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[-0.5,1.0,-0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[-0.5,1.0,0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run summon tnt ~ ~ ~ {Fuse:100,Motion:[-0.5,1.0,-0.5]}
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run kill @s