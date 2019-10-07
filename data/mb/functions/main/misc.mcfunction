effect give @e[tag=inv] minecraft:invisibility 20 255 true
effect give @e[tag=fr] minecraft:fire_resistance 20 255 true
effect give @e[tag=slowf] minecraft:slow_falling 20 1 true
execute as @e[type=wandering_trader,tag=!done] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:1,uses:0,xp:0,priceMultiplier:0f,buy:{id:"minecraft:oak_wood",Count:3b},buyB:{id:"minecraft:gold_ingot",Count:3b},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Shaman\'s Staff","color":"gold","italic":false}',Lore:['{"text":"[Artifact]","color":"gold","italic":false}','{"text":""}','{"text":"A great tool with little uses.","color":"dark_gray"}','{"text":""}','{"text":"☽ Witching Hour ☽","color":"dark_green"}']},HideFlags:63,Unbreakable:1b,CustomModelData:12,id:staff}}}
execute as @e[type=wandering_trader,tag=!done] run tag @s add done
#execute as @a[nbt=!{SelectedItem:{tag:{id:"gold_chalk"}}},nbt=!{SelectedItem:{tag:{id:"white_chalk"}}},nbt=!{SelectedItem:{tag:{id:"infernal_chalk"}}},nbt=!{SelectedItem:{tag:{id:"soul_gem"}}},nbt=!{SelectedItem:{tag:{id:"dimensional_mirror"}}},nbt=!{SelectedItem:{tag:{id:"fates_coin"}}},nbt=!{SelectedItem:{tag:{crownm:1b}}}] run scoreboard players set @s Rclick 0
effect give @e[tag=hj] minecraft:jump_boost 20 5 true
execute as @e[tag=fnp] at @s run tp @s ~ ~ ~ facing entity @p[distance=..30] eyes
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