scoreboard players add function Timer 1
execute if score function Timer matches 5.. run function mb:function
execute if score function Timer matches 5.. run scoreboard players reset function Timer
execute as @e[tag=cmgc] at @s run function mb:main/split/ritualsparticle
function mb:entities/potions/potions
execute as @e[tag=demon] at @s run function mb:entities/bosses/demon
function mb:items/active/broom
execute as @e[tag=warpip,tag=init] at @s run function mb:main/split/mirrorwarp
scoreboard players add @a[tag=infused,scores={PlayerInfP=..999}] PlayerInfP 1
function mb:items/active/necrod