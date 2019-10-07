execute as @s[tag=spell,tag=!done] at @s run tp @s @a[limit=1,distance=..1,sort=nearest]
execute as @s[tag=spell,tag=!done] at @s run tp @s ~ ~1.8 ~
execute as @s[tag=spell,tag=!done] at @s run scoreboard players set @s Life 40
execute as @a at @s if score @s Taglock = @e[limit=1,type=!player,tag=spell] Taglocktemp run tag @s add spellcooldown




scoreboard players remove @e[tag=spell] Life 1
execute as @s[tag=fire,tag=done,tag=!invert] at @s run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute as @s[tag=fire,tag=done,tag=invert] at @s run particle minecraft:dripping_water ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute as @s[tag=frost,tag=done,tag=!invert] at @s run particle minecraft:block minecraft:ice ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute as @s[tag=frost,tag=done,tag=invert] at @s run particle minecraft:item_snowball ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute as @s[tag=air,tag=done,tag=!invert] at @s run particle minecraft:poof ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute as @s[tag=air,tag=done,tag=invert] at @s unless block ~ ~-1 ~ water unless block ~ ~-1 ~ lava run particle minecraft:block minecraft:dirt ~ ~ ~ 0.1 0.1 0.1 0 4 force
execute as @s[tag=air,tag=done,tag=invert] at @s if block ~ ~-1 ~ water run particle minecraft:rain ~ ~ ~ 0 0 0 0 5 force
execute as @s[tag=air,tag=done,tag=invert] at @s if block ~ ~-1 ~ lava run particle minecraft:lava ~ ~ ~ 0 0 0 0 5 force
execute as @s[tag=warp,tag=done,tag=!invert] at @s run particle minecraft:dust 0.6 0 0.6 1 ~ ~ ~ 0.1 0.1 0.1 0 20 force
execute as @s[tag=warp,tag=done,tag=invert] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.6 500
execute as @s[tag=summon,tag=done,tag=!invert] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0.2 0 0.03 100
execute as @s[tag=summon,tag=done,tag=invert] at @s run particle minecraft:dripping_water ~ ~ ~ 0.1 0.1 0.1 0 2 force

##effects
execute at @e[tag=spell,scores={Life=..35},tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run tp @e[tag=spell,limit=1,sort=nearest] @s

execute as @s[tag=fire,tag=spell] at @s run function mb:staffspells/fire
execute as @s[tag=frost,tag=spell] at @s run function mb:staffspells/frost
execute as @s[tag=air,tag=spell] at @s run function mb:staffspells/air
execute as @s[tag=warp,tag=spell] at @s run function mb:staffspells/warp
execute as @s[tag=summon,tag=spell] at @s run function mb:staffspells/summon

execute at @e[tag=spell,scores={Life=..35},tag=offense] positioned ~-0.75 ~ ~-0.75 as @e[tag=!spell,dx=0,dy=0.975,dz=0] positioned ~0.5 ~ ~0.5 if entity @s[dx=0,dy=0.975,dz=0] run tag @e[tag=spell,distance=..2] add spellend
execute as @a at @s if score @s Taglock = @e[limit=1,tag=spellend,type=!player,tag=spell] Taglocktemp run tag @s remove spellcooldown
execute as @a at @s if score @s Taglock = @e[limit=1,tag=spellend,type=!player,tag=spell] Taglocktemp run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 100 1
kill @e[tag=spell,tag=spellend]


execute as @s[tag=spell,tag=done] at @s unless block ~ ~ ~ #mb:passable run tag @s add spellend
execute as @e[tag=spell,scores={Life=..0},tag=!gravity,tag=done] run tag @s add spellend
execute as @a at @s unless score @s Taglock = @e[limit=1,tag=spell] Taglocktemp run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 100 1
execute as @s[tag=spell,tag=!air] at @s run tp @s ^ ^ ^0.5
execute as @s[tag=spell,tag=air,tag=!inverted] at @s run tp @s ^ ^ ^1
execute as @s[tag=spell,tag=gravity] at @s run tp @s ~ ~ ~ ~ ~2
tag @s[tag=!done] add done