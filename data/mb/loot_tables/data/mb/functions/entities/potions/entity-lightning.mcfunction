execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_lightning"}}}] at @s run tag @s add bol
execute as @e[tag=bol,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bolf"],DisabledSlots:4144959}
execute as @e[tag=bol,tag=!done] at @s run tag @s add done
execute as @e[tag=bolf] at @s run tp @s @e[tag=bol,limit=1,sort=nearest,distance=..1]
execute as @e[tag=bolf] at @s unless entity @e[tag=bol,distance=..1] run summon lightning_bolt ~ ~ ~
execute as @e[tag=bolf] at @s unless entity @e[tag=bol,distance=..1] run kill @s