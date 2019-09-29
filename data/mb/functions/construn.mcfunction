execute as @e[tag=cmgc] at @s run function mb:main/split/ritualsparticle
function mb:entities/potions/potions
execute as @e[tag=demon] at @s run function mb:entities/bosses/demon
function mb:items/active/broom
execute as @e[tag=warpip,tag=init] at @s run function mb:main/split/mirrorwarp
scoreboard players add @a[tag=infused,scores={PlayerInfP=..999}] PlayerInfP 1
execute as @e[tag=book_ui,tag=!done] at @s run particle block bookshelf ~ ~ ~ 0.01 0.01 0.01 0 20
execute as @e[tag=book_ui,tag=!done] at @s if block ^ ^ ^1 air run tp @s ^ ^ ^1
execute as @e[tag=book_ui,tag=!done] at @s run tp @s ~ ~ ~ ~ ~2
function mb:main/split/crystalballplacement
function mb:main/split/brazierplacement
function mb:main/split/mortarplacment
execute as @e[tag=book_ui,tag=done,tag=done3] at @s if block ~ ~-1 ~ air run tp @s ~ ~-0.2 ~
execute as @e[type=!minecraft:player,type=!armor_stand,type=!item,type=!potion] at @s if entity @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon,distance=..10] run tp @s ^-0.1 ^0.1 ^-0.1
execute as @e[tag=soullink,tag=init] at @s run tp @s ^ ^ ^0.3
execute as @e[tag=roue] run function mb:main/split/upliftlevel
execute as @a[tag=inSoulDim] at @s run function mb:dim/dimmisc