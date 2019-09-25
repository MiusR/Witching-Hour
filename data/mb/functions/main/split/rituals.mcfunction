execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=100..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:wooden_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] run function mb:rituals/ritual-rain
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofrain] run function mb:rituals/ritual-rain

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=50..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:stone_axe",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] run function mb:rituals/ritual-night
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofnight] run function mb:rituals/ritual-night

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=150..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"brew_of_lightning"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:iron_shovel",Count:1b}}] run function mb:rituals/ritual-thunder
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofthethunderstorm] run function mb:rituals/ritual-thunder

execute as @e[tag=!rtimer,tag=!rctimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:slime_ball",Count:1b}}] run function mb:rituals/ritual-eventhorizon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=7200..},tag=ritualoftheventhorizon] run function mb:rituals/ritual-eventhorizon
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run function mb:rituals/ritual-eventhor1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gunpowder",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run function mb:rituals/ritual-charging
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofcharging] run function mb:rituals/ritual-charging

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=500..}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"liquid_luck"}}}] if entity @e[type=item,distance=..5,nbt={Item:{tag:{id:"horror_dust"}}}] if entity @e[type=villager,distance=..5,limit=1] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}}] if entity @e[type=item,distance=..5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run function mb:rituals/ritual-summoning-demon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:12b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofsummoningdemon] run function mb:rituals/ritual-summoning-demon

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run function mb:rituals/ritual-sword
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoftheblade] run function mb:rituals/ritual-sword

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"liquid_luck"}}}] run function mb:rituals/ritual-summoning-wanderer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofthetrader] run function mb:rituals/ritual-summoning-wanderer

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=200..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run function mb:rituals/ritual-uplift1
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting] run function mb:rituals/ritual-uplift1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run function mb:rituals/ritual-uplift2
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting1] run function mb:rituals/ritual-uplift2

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"looping_fumes"}}}] run function mb:rituals/ritual-uplift3
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofuplisting2] run function mb:rituals/ritual-uplift3

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"quartz_ball"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"mystic_oinment"}}}] run function mb:rituals/ritual-future
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoft] run function mb:rituals/ritual-future

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:skeleton_skull",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:stone",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"charged_greater_caralist"}}}] if score traker Time matches 13000..23000 run function mb:rituals/ritual-necromancy
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofnecromancy] if score traker Time matches 13000..23000 run function mb:rituals/ritual-necromancy

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"greater_catalist"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"spectral_dust"}}}] if score traker Time matches 13000..23000 run function mb:rituals/ritual-soulgem
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:15b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofnecros] if score traker Time matches 13000..23000 run function mb:rituals/ritual-soulgem

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"blind_eye_infusion"}}}] run function mb:rituals/ritual-infusion1
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofinfusionI] run function mb:rituals/ritual-infusion1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"infusion_of_the_planes"}}}] run function mb:rituals/ritual-infusion3
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofinfusionII] run function mb:rituals/ritual-infusion3

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oxeye_daisy",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run function mb:rituals/ritual-hand-mirror
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofthrplanes] run function mb:rituals/ritual-hand-mirror

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"infusion_of_fortune"}}}] run function mb:rituals/ritual-infusion4
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofinfusionIII] run function mb:rituals/ritual-infusion4

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=300..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_nugget",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run function mb:rituals/ritual-coins
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoffate] run function mb:rituals/ritual-coins

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=1000..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"soul_of_the_world"}}}] run function mb:rituals/ritual-infusion2
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofinfusionIV] run function mb:rituals/ritual-infusion2

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=150..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:4b}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:red_tulip",Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"breath_of_the_moss_guardian"}}}] run function mb:rituals/ritual-mosscrown
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:1b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoftheking] run function mb:rituals/ritual-mosscrown

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=400..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"wool_of_bat"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"skys_tear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"condensed_fear"}}}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:anvil",Count:1b}}] run function mb:rituals/ritual-heavycattle
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualoftheking] run function mb:rituals/ritual-heavycattle
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualofheavycattle] at @s run function mb:rituals/ritual-heavycat1

execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=600..}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"broom"},Count:1b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"flying_ointment"},Count:1b}}] run function mb:rituals/ritual-broom-infusion
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=30..},tag=ritualofthebroom] run function mb:rituals/ritual-broom-infusion