execute as @a[tag=inSoulDim,gamemode=survival] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ poppy
execute if entity @a[tag=inSoulDim] as @e[type=minecraft:ghast] at @s run tag @s add summonSoul
execute if entity @a[tag=inSoulDim] as @e[tag=!inSoulDim,tag=!summonSoul,tag=!soulDimSoul,type=!item,type=!zombie_pigman,type=!armor_stand] at @s run effect give @s invisibility
execute if entity @a[tag=inSoulDim] as @e[tag=!inSoulDim,tag=!summonSoul,tag=!soulDimSoul,type=!item,type=!zombie_pigman,type=!armor_stand] at @s run tp @s ~ ~-10 ~
execute if entity @a[tag=inSoulDim] as @e[tag=!inSoulDim,tag=!summonSoul,tag=!soulDimSoul,type=!item,type=!zombie_pigman,type=!armor_stand] at @s run kill @s[y=130,dy=36]
execute if entity @a[tag=inSoulDim] as @e[type=minecraft:item,nbt=!{Item:{tag:{soulDimItem:1b}}}] at @s run kill @s[y=130,dy=36]
execute as @e[tag=summonSoul] at @s run summon minecraft:bat ~ ~ ~ {Silent:1b,DeathLootTable:"mb:items/spirit",Health:0.5f,BatFlags:0b,Tags:["inv","soulDimSoul"]}
execute as @e[tag=soulDimSoul] at @s run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute as @e[tag=summonSoul] at @s run kill @s
execute as @e[type=zombie_pigman] at @s if entity @a[distance=20..,tag=inSoulDim] run tp @s ~ ~-3 ~
execute as @e[type=zombie_pigman] at @s if entity @a[distance=20..,tag=inSoulDim] run kill @s[y=130,dy=36]
scoreboard players remove @a[tag=inSoulDim] spiritRealmTimer 1
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s run kill @e[type=!player,type=!armor_stand]
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s run effect give @a[tag=inSoulDim] minecraft:resistance 10 255
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s run gamemode survival @s
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s in overworld run tp @s @e[limit=1,tag=cmgc,sort=nearest]
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s in overworld run forceload remove all
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s in overworld run tp @s ~ ~ ~
execute as @a[tag=inSoulDim,scores={spiritRealmTimer=..0}] at @s run tag @s remove inSoulDim
effect give @a[tag=inSoulDim] minecraft:resistance 2 255
effect give @a[tag=inSoulDim] minecraft:saturation 2 255