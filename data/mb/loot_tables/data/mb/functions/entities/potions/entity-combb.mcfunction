execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_combustion"}}}] at @s run tag @s add bocomb
execute as @e[tag=bocomb,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bocombf"],DisabledSlots:4144959}
execute as @e[tag=bocomb,tag=!done] at @s run tag @s add done
execute as @e[tag=bocombf] at @s run tp @s @e[tag=bocomb,limit=1,sort=nearest,distance=..1]
execute as @e[tag=bocombf] at @s unless entity @e[tag=bocomb,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["combustionp"],DisabledSlots:4144959}
execute as @e[tag=combustionp,tag=!done] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 structure_void keep
execute as @e[tag=combustionp,tag=!done] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["combustionr"],DeathLootTable:"543532453"}
execute as @e[tag=combustionp,tag=!done] at @s run tag @s add done
execute as @e[tag=combustionp,tag=done] at @s unless entity @e[tag=combustionr,distance=..3] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 fire replace air
execute as @e[tag=combustionp,tag=done] at @s unless entity @e[tag=combustionr,distance=..3] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace structure_void
execute as @e[tag=combustionp,tag=done] at @s unless entity @e[tag=combustionr,distance=..3] run kill @s
execute as @e[tag=bocombf] at @s unless entity @e[tag=bocomb,distance=..1] run kill @s