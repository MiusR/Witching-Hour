effect give @e[tag=inv] minecraft:invisibility 10 255 true
effect give @e[tag=fr] minecraft:fire_resistance 10 255 true
effect give @e[tag=slowf] minecraft:slow_falling 10 1 true
execute as @a[nbt=!{SelectedItem:{tag:{id:"gold_chalk"}}},nbt=!{SelectedItem:{tag:{id:"white_chalk"}}},nbt=!{SelectedItem:{tag:{id:"infernal_chalk"}}},nbt=!{SelectedItem:{tag:{id:"soul_gem"}}},nbt=!{SelectedItem:{tag:{id:"dimensional_mirror"}}},nbt=!{SelectedItem:{tag:{id:"fates_coin"}}},nbt=!{SelectedItem:{tag:{crownm:1b}}},nbt=!{SelectedItem:{tag:{id:"book_of_forbbiden_arts_stick"}}}] run scoreboard players set @s Rclick 0
effect give @e[tag=hj] minecraft:jump_boost 10 5 true
execute as @e[tag=fnp] at @s run tp @s ~ ~ ~ facing entity @p[distance=..30] eyes
execute as @e[type=slime] store result score @s Life run data get entity @s AbsorptionAmount
execute as @a[team=!UF,nbt=!{ActiveEffects:[{Id:14b}]}] at @s if entity @e[tag=joinUF,distance=..30] run team join UF @s
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run team leave @s
execute as @a[] at @s unless entity @e[tag=joinUF,distance=..30] run team leave @s
execute as @e[type=vex,tag=demon] store result score @s Life run data get entity @s Health
execute as @e[tag=undeadh] run scoreboard players add @s Life 1
execute as @e[tag=undeadh,scores={Life=10000..}] at @s run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 20
execute as @e[tag=undeadh,scores={Life=10000..}] at @s run tp @s ~ -250 ~
execute as @e[tag=undeadh,scores={Life=10000..}] run kill @s
scoreboard players add @a Random12 1
scoreboard players set @a[scores={Random12=13..}] Random12 1
execute as @e[tag=spread1] at @s run spreadplayers ~ ~ 5 10 false @s
tag @e[tag=spread1] remove spread1
execute store result score traker Time run time query daytime
execute as @e[tag=roue,tag=!moveup20large] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=roue,tag=moveup20large] at @s run tp @s ~ ~ ~ ~3 ~
execute as @e[tag=roue] at @s unless block ~ ~ ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~20 ~ masked move
execute as @e[tag=roue,tag=!done] at @s if block ~ ~-0.22 ~ minecraft:bedrock run tag @s add done
execute as @e[tag=roue,tag=done] at @s run setblock ~ ~-0.22 ~ air
execute as @e[tag=roue,tag=done] at @s run kill @s
execute as @e[tag=roue,tag=!moveup20large] at @s run tp @s ~ ~-0.01 ~
execute as @e[tag=roue,tag=moveup20large] at @s run tp @s ~ ~-0.004 ~
execute as @e[tag=moveup20small] at @s run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force
execute as @e[tag=moveup20medium] at @s run particle minecraft:end_rod ^ ^ ^8 0 0 0 0 1 force
execute as @e[tag=moveup20large] at @s run particle minecraft:end_rod ^ ^ ^11 0 0 0 0 1 force
execute as @e[tag=moveup20large] at @s run particle minecraft:end_rod ^ ^ ^-11 0 0 0 0 1 force


execute as @p[tag=!hastaglockn] store result score @s Taglock run scoreboard players get tracker Taglock
execute if entity @a[tag=!hastaglockn] run scoreboard players add tracker Taglock 1
execute as @p[tag=!hastaglockn] run tag @s add hastaglockn
execute as @a at @s if data entity @s SleepingX run tag @s add issleeping
execute as @a at @s unless data entity @s SleepingX run tag @s remove issleeping
execute as @e[tag=taggedbed] at @s unless block ~ ~-0.3 ~ #minecraft:beds run kill @s
execute as @a[tag=issleeping] at @s unless entity @e[distance=..1,tag=taggedbed,limit=1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["taggedbed"],DisabledSlots:4144959}
execute as @e[tag=taggedbed] at @s if entity @p[distance=..1,tag=issleeping] store result score @s Taglock run scoreboard players get @p[distance=..1,limit=1,tag=issleeping] Taglock
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if entity @e[distance=..2,tag=taggedbed] store result entity @s Item.tag.taglockdata int 1 run scoreboard players get @e[tag=taggedbed,distance=..2,limit=1] Taglock
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if entity @e[distance=..2,tag=taggedbed] run data merge entity @s {Item:{tag:{CustomModelData:18}}}
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if entity @e[distance=..2,tag=taggedbed] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 20
execute as @e[tag=taggedbed] at @s if entity @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] run kill @s

execute as @e[tag=roue] at @s run clone ^ ^ ^1 ^ ^ ^1 ^ ^20 ^1 masked move
execute as @e[tag=roue] at @s run clone ^ ^ ^2 ^ ^ ^2 ^ ^20 ^2 masked move
execute as @e[tag=roue] at @s run clone ^ ^ ^3 ^ ^ ^3 ^ ^20 ^3 masked move
execute as @e[tag=roue] at @s run clone ^ ^ ^4 ^ ^ ^4 ^ ^20 ^4 masked move
execute as @e[tag=roue] at @s run clone ^ ^ ^5 ^ ^ ^5 ^ ^20 ^5 masked move
execute as @e[tag=moveup20medium1] at @s run clone ^ ^ ^6 ^ ^ ^6 ^ ^20 ^6 masked move
execute as @e[tag=moveup20medium1] at @s run clone ^ ^ ^7 ^ ^ ^7 ^ ^20 ^7 masked move
execute as @e[tag=moveup20medium1] at @s run clone ^ ^ ^8 ^ ^ ^8 ^ ^20 ^8 masked move
execute as @e[tag=moveup20large] at @s run clone ^ ^ ^9 ^ ^ ^9 ^ ^20 ^9 masked move
execute as @e[tag=moveup20large] at @s run clone ^ ^ ^10 ^ ^ ^10 ^ ^20 ^10 masked move
execute as @e[tag=moveup20large] at @s run clone ^ ^ ^11 ^ ^ ^11 ^ ^20 ^11 masked move











execute as @p[nbt={SelectedItem:{tag:{id:"taglock_kit"}}},nbt=!{SelectedItem:{tag:{taglockdata:0}}}] unless entity @a[distance=0.5..,tag=checktaglocktemp] run tag @s add checktaglocktemp
execute as @p[tag=checktaglocktemp] store result score @s Taglocktemp run data get entity @s SelectedItem.tag.taglockdata 1
execute as @a if score @a[limit=1,tag=checktaglocktemp] Taglocktemp = @s Taglock run tag @s add foundtaglock
execute as @p[tag=checktaglocktemp,tag=!told,scores={Sneak=1}] if entity @a[tag=foundtaglock] run tellraw @s {"selector":"@a[tag=foundtaglock]","color":"light_purple"}
execute as @p[tag=checktaglocktemp,tag=!told,scores={Sneak=1}] if entity @a[tag=!foundtaglock] run tellraw @s {"text":"The player isn't online at the moment!","color":"red"}
tag @a[tag=checktaglocktemp] remove checktaglocktemp
tag @a[tag=foundtaglock] remove foundtaglock
execute as @a[nbt={SelectedItem:{tag:{id:"taglock_kit"}}},scores={Sneak=1}] run tag @s add told
execute as @a[nbt=!{SelectedItem:{tag:{id:"taglock_kit"}}}] run tag @s remove told

execute as @p[nbt={SelectedItem:{tag:{id:"blood_pact"}}},nbt=!{SelectedItem:{tag:{taglockdata:0}}}] unless entity @a[distance=0.5..,tag=checktaglocktemp1] run tag @s add checktaglocktemp1
execute as @p[tag=checktaglocktemp1] store result score @s Taglocktemp run data get entity @s SelectedItem.tag.taglockdata 1
execute as @a if score @a[limit=1,tag=checktaglocktemp1] Taglocktemp = @s Taglock run tag @s add foundtaglock1
execute as @p[tag=checktaglocktemp1,tag=!told1,scores={Sneak=1}] if entity @a[tag=foundtaglock1] run tellraw @s {"selector":"@a[tag=foundtaglock1]","color":"light_purple"}
execute as @p[tag=checktaglocktemp1,tag=!told1,scores={Sneak=1}] if entity @a[tag=!foundtaglock1] run tellraw @s {"text":"The player isn't online at the moment!","color":"red"}
tag @a[tag=checktaglocktemp1] remove checktaglocktemp1
tag @a[tag=foundtaglock1] remove foundtaglock1
execute as @a[nbt={SelectedItem:{tag:{id:"blood_pact"}}},scores={Sneak=1}] run tag @s add told1
execute as @a[nbt=!{SelectedItem:{tag:{id:"blood_pact"}}}] run tag @s remove told1

execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=true] run loot spawn ~ ~1 ~ loot mb:items/blood_pact
execute as @e[type=item,tag=!init,nbt={Item:{tag:{id:"blood_pact",taglockdata:0}}}] at @s store result entity @s Item.tag.taglockdata int 1 run data get entity @e[limit=1,type=item,nbt={Item:{tag:{id:"taglock_kit"}}},distance=..1] Item.tag.taglockdata 1
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=true,facing=east] run setblock ~ ~-0.2 ~ minecraft:lectern[has_book=false,facing=east]
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=true,facing=west] run setblock ~ ~-0.2 ~ minecraft:lectern[has_book=false,facing=west]
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=true,facing=north] run setblock ~ ~-0.2 ~ minecraft:lectern[has_book=false,facing=north]
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=true,facing=south] run setblock ~ ~-0.2 ~ minecraft:lectern[has_book=false,facing=south]
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=false] if entity @e[type=item,nbt={Item:{tag:{id:"blood_pact"}}}] run playsound minecraft:block.lava.extinguish master @a[distance=..15] ~ ~ ~ 100 1
execute as @e[type=item,nbt={Item:{tag:{id:"taglock_kit"}},OnGround:1b}] at @s if block ~ ~-0.2 ~ minecraft:lectern[has_book=false] if entity @e[type=item,nbt={Item:{tag:{id:"blood_pact"}}}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 10
execute as @e[type=item,tag=!init,nbt={Item:{tag:{id:"blood_pact"}}}] at @s run kill @e[type=item,distance=..1,limit=1,nbt={Item:{tag:{id:"taglock_kit"}}}]