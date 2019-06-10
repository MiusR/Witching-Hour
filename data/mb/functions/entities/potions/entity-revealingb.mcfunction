execute as @e[type=minecraft:potion,nbt={Potion:{tag:{brewofrevealing:1b}}},tag=!bor] run tag @s add bor
execute as @e[tag=bor,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["borf"],DisabledSlots:4144959}
execute as @e[tag=bor,tag=!done] at @s run tag @s add done
execute as @e[tag=borf] at @s run tp @s @e[tag=bor,limit=1,sort=nearest,distance=..1]
execute as @e[tag=borf] at @s unless entity @e[distance=..1,tag=bor] run effect clear @e[distance=..4] minecraft:invisibility
execute as @e[tag=borf] at @s unless entity @e[distance=..1,tag=bor] run kill @s