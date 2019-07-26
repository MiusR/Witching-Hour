execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_raising"}}}] at @s run tag @s add borasising
execute as @e[tag=borasising,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["borasisingf"],DisabledSlots:4144959}
execute as @e[tag=borasising,tag=!done] at @s run tag @s add done
execute as @e[tag=borasisingf] at @s run tp @s @e[tag=borasising,limit=1,sort=nearest,distance=..1]
execute as @e[tag=borasisingf] at @s unless entity @e[tag=borasising,distance=..1] run summon zombie ~ ~ ~ {Attributes:[{Name:generic.followRange,Base:0}],HandItems:[{},{id:"minecraft:stone_axe",Count:1b}],Tags:["summoned","joinUF"]}
execute as @e[tag=borasisingf] at @s unless entity @e[tag=borasising,distance=..1] run kill @s