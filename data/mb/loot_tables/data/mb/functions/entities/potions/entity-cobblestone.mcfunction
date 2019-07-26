execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_cobblestone"}}}] at @s run tag @s add bocobble
execute as @e[tag=bocobble,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bocobblef"],DisabledSlots:4144959}
execute as @e[tag=bocobble,tag=!done] at @s run tag @s add done
execute as @e[tag=bocobblef] at @s run tp @s @e[tag=bocobble,limit=1,sort=nearest,distance=..1]
execute as @e[tag=bocobblef] at @s unless entity @e[tag=bocobble,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["stoneplacep"],DisabledSlots:4144959}
execute as @e[tag=stoneplacep,tag=!done] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 structure_void keep
execute as @e[tag=stoneplacep,tag=!done] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["stoner"],DeathLootTable:"543532453"}
execute as @e[tag=stoneplacep,tag=!done] at @s run tag @s add done
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 cobblestone replace air
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace structure_void
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run kill @e[type=item,distance=..10]
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run kill @s
execute as @e[tag=bocobblef] at @s unless entity @e[tag=bocobble,distance=..1] run kill @s