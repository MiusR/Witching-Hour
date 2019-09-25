effect give @e[tag=inv] minecraft:invisibility 10 255 true
effect give @e[tag=fr] minecraft:fire_resistance 10 255 true
effect give @e[tag=slowf] minecraft:slow_falling 10 1 true
#execute as @a[nbt=!{SelectedItem:{tag:{id:"gold_chalk"}}},nbt=!{SelectedItem:{tag:{id:"white_chalk"}}},nbt=!{SelectedItem:{tag:{id:"infernal_chalk"}}},nbt=!{SelectedItem:{tag:{id:"soul_gem"}}},nbt=!{SelectedItem:{tag:{id:"dimensional_mirror"}}},nbt=!{SelectedItem:{tag:{id:"fates_coin"}}},nbt=!{SelectedItem:{tag:{crownm:1b}}}] run scoreboard players set @s Rclick 0
effect give @e[tag=hj] minecraft:jump_boost 10 5 true
execute as @e[tag=fnp] at @s run tp @s ~ ~ ~ facing entity @p[distance=..30] eyes
execute as @e[type=slime,nbt=!{Tags:[]}] store result score @s Life run data get entity @s AbsorptionAmount
execute as @a[team=!UF,nbt=!{ActiveEffects:[{Id:14b}]}] at @s if entity @e[tag=joinUF,distance=..30] run team join UF @s
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run team leave @s
execute as @a[] at @s unless entity @e[tag=joinUF,distance=..30] run team leave @s
execute as @e[type=vex,tag=demon] store result score @s Life run data get entity @s Health
execute as @e[tag=undeadh] run function mb:main/split/undeadhunterdeathtimer
scoreboard players add @a Random12 1
scoreboard players set @a[scores={Random12=13..}] Random12 1
execute as @e[tag=spread1] at @s run spreadplayers ~ ~ 5 10 false @s
tag @e[tag=spread1] remove spread1

execute store result score traker Time run time query daytime

execute as @e[tag=roue,tag=!moveup20large] at @s run function mb:main/split/upliftmisc
execute as @e[tag=moveup20small] at @s run function mb:main/split/upliftmisc
execute as @e[tag=moveup20medium] at @s run function mb:main/split/upliftmisc
execute as @e[tag=moveup20large] at @s run function mb:main/split/upliftmisc

execute as @p[tag=!hastaglockn] run function mb:main/split/bloodtag
execute as @a at @s if data entity @s SleepingX run function mb:main/split/sleeptag
execute as @e[tag=taggedbed] at @s run function mb:main/split/sleeptag
execute as @e[tag=roue] at @s run function mb:main/split/upliftlevel
execute as @e[tag=moveup20medium1] at @s run function mb:main/split/upliftlevel
execute as @e[tag=moveup20large] at @s run function mb:main/split/upliftlevel
#########################################################################################################

#########################################################################################################
execute as @p[nbt={SelectedItem:{tag:{id:"taglock_kit"}}},nbt=!{SelectedItem:{tag:{taglockdata:0}}}] unless entity @a[distance=0.5..,tag=checktaglocktemp] run function mb:main/split/taglockplayerindic

execute as @p[nbt={SelectedItem:{tag:{id:"blood_pact"}}},nbt=!{SelectedItem:{tag:{taglockdata:0}}}] unless entity @a[distance=0.5..,tag=checktaglocktemp1] run function mb:main/split/bloodpactplayerindic
execute as @p[tag=told] run function mb:main/split/taglockplayerindic
execute as @p[tag=told1] run function mb:main/split/bloodpactplayerindic
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=true] run function mb:main/split/bloodpact