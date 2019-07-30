scoreboard players add function Timer 1
execute if score function Timer matches 5.. run function mb:function
execute if score function Timer matches 5.. run scoreboard players reset function Timer
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
execute as @e[tag=book_ui,tag=done,tag=done3] at @s if block ~ ~-1 ~ air run tp @s ~ ~-0.2 ~