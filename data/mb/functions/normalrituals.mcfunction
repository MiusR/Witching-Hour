execute as @e[tag=rtimer] run scoreboard players add @s Timer 1
execute as @e[tag=rctimer] run scoreboard players add @s RRTimer 1
execute as @e[tag=cmgc,tag=rtimer,tag=!ritualoftheventhorizon,tag=!ritualofheavycattle] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},tag=!ritualoftheventhorizon] at @s run particle minecraft:totem_of_undying ^ ^2 ^3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},tag=!ritualoftheventhorizon] at @s run particle minecraft:totem_of_undying ^ ^2 ^-3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},tag=!ritualoftheventhorizon] at @s run particle minecraft:totem_of_undying ^ ^2 ^3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},tag=!ritualoftheventhorizon] at @s run particle minecraft:totem_of_undying ^ ^2 ^-3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},tag=!ritualoftheventhorizon] at @s run particle minecraft:totem_of_undying ^ ^2 ^3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},tag=!ritualoftheventhorizon] at @s run particle minecraft:totem_of_undying ^ ^2 ^-3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s run particle minecraft:flame ^ ^2 ^3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s run particle minecraft:flame ^ ^2 ^-3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s run particle minecraft:flame ^ ^2 ^3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s run particle minecraft:flame ^ ^2 ^-3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},tag=!ritualofheavycattle] at @s run particle minecraft:flame ^ ^2 ^3 0 0 0 0 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},tag=!ritualofheavycattle] at @s run particle minecraft:flame ^ ^2 ^-3 0 0 0 0 1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run function mb:rituals/ritual-rain
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofrain] run function mb:rituals/ritual-rain

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:stone_axe",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] run function mb:rituals/ritual-night
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnight] run function mb:rituals/ritual-night

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{brewoflightning:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:iron_shovel",Count:1b}}] run function mb:rituals/ritual-thunder
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthethunderstorm] run function mb:rituals/ritual-thunder

execute as @e[tag=!rtimer,tag=!rctimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run function mb:rituals/ritual-eventhorizon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=36000..},tag=ritualoftheventhorizon] run function mb:rituals/ritual-eventhorizon
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualoftheventhorizon] at @s run function mb:rituals/ritual-eventhor1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{gcatalist:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function mb:rituals/ritual-charging
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofcharging] run function mb:rituals/ritual-charging

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{lqpotion:1b}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{horrord:1b}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run function mb:rituals/ritual-summoning-demon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofsummoningdemon] run function mb:rituals/ritual-summoning-demon

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{cgcatalist:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{lqpotion:1b}}}] run function mb:rituals/ritual-sword
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoftheblade] run function mb:rituals/ritual-sword

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{cgcatalist:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{lqpotion:1b}}}] run function mb:rituals/ritual-summoning-wanderer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthetrader] run function mb:rituals/ritual-summoning-wanderer

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{efpotion:1b}}}] run function mb:rituals/ritual-uplift1
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofuplisting] run function mb:rituals/ritual-uplift1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{efpotion:1b}}}] run function mb:rituals/ritual-uplift2
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofuplisting1] run function mb:rituals/ritual-uplift2

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{efpotion:1b}}}] run function mb:rituals/ritual-uplift3
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofuplisting2] run function mb:rituals/ritual-uplift3

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{csphere:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{msoint:1b}}}] run function mb:rituals/ritual-future
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoft] run function mb:rituals/ritual-future

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:skeleton_skull",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:stone",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{cgcatalist:1b}}}] if score traker Time matches 13000..23000 run function mb:rituals/ritual-necromancy
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecromancy] if score traker Time matches 13000..23000 run function mb:rituals/ritual-necromancy

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{gcatalist:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{specdust:1b}}}] if score traker Time matches 13000..23000 run function mb:rituals/ritual-soulgem
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofnecros] if score traker Time matches 13000..23000 run function mb:rituals/ritual-soulgem

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{blindei:1b}}}] run function mb:rituals/ritual-infusion1
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionI] run function mb:rituals/ritual-infusion1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{planesi:1b}}}] run function mb:rituals/ritual-infusion3
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionII] run function mb:rituals/ritual-infusion3

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run function mb:rituals/ritual-hand-mirror
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofthrplanes] run function mb:rituals/ritual-hand-mirror

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{fatei:1b}}}] run function mb:rituals/ritual-infusion4
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionIII] run function mb:rituals/ritual-infusion4

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run function mb:rituals/ritual-coins
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoffate] run function mb:rituals/ritual-coins

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{sotworld:1b}}}] run function mb:rituals/ritual-infusion2
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualofinfusionIV] run function mb:rituals/ritual-infusion2

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:red_tulip",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{mgpotion:1b}}}] run function mb:rituals/ritual-mosscrown
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoftheking] run function mb:rituals/ritual-mosscrown

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{stpotion:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{condfpotion:1b}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run function mb:rituals/ritual-heavycattle
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoftheking] run function mb:rituals/ritual-heavycattle
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualofheavycattle] at @s run function mb:rituals/ritual-heavycat1


execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=150..},tag=!ritualoftheventhorizon,tag=!ritualofheavycattle] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,scores={Timer=150..},tag=!ritualoftheventhorizon,tag=!ritualofheavycattle] at @s run tp @s ~ ~ ~ 0 ~
execute as @e[tag=cmgc,scores={Timer=150..},tag=!ritualofsummoningdemon] at @s run scoreboard players reset @s Timer
execute as @e[tag=cmgc,scores={RRTimer=36000..}] at @s run scoreboard players reset @s RRTimer
execute as @e[tag=cmgc,scores={Timer=150..}] at @s run scoreboard players reset @s Timer
execute as @e[tag=cmgc,scores={RRTimer=36000..}] at @s run scoreboard players reset @s RRTimer

execute as @e[tag=cmgc,nbt=!{ActiveEffects:[{Id:1b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:17b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:26b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:12b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:15b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s run data merge entity @s {Tags:["cmgc"]}
execute as @e[tag=cmgc,nbt=!{ActiveEffects:[{Id:26b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:17b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:1b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:12b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:15b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s run tp @s ~ ~ ~ 0 ~
execute as @e[tag=cmgc,nbt=!{ActiveEffects:[{Id:26b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:17b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:1b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:12b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:15b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt=!{ActiveEffects:[{Id:26b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:17b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:1b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:12b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:15b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s run tag @s remove rctimer
execute as @e[tag=cmgc,nbt=!{ActiveEffects:[{Id:26b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:17b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:1b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:12b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:15b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s run scoreboard players reset @s Timer
execute as @e[tag=cmgc,nbt=!{ActiveEffects:[{Id:26b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:17b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:1b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:12b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:15b,Amplifier:-1b}]},nbt=!{ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s run scoreboard players reset @s RRTimer