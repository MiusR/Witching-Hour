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

execute as @e[tag=!rtimer,tag=cmgc,nbt=!{ActiveEffects:[]}] at @s if entity @e[type=item,distance=..3] run function mb:main/split/rituals
execute as @e[tag=cmgc,nbt=!{ActiveEffects:[]},scores={Timer=150..}] run function mb:main/split/rituals
execute as @e[tag=cmgc,tag=rctimer,nbt=!{ActiveEffects:[]},scores={RRTimer=..36000}] at @s run function mb:main/split/rituals


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