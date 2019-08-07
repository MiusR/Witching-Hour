execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run particle minecraft:end_rod ^ ^ ^10 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run particle minecraft:end_rod ^ ^ ^-10 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run particle minecraft:end_rod ^10 ^ ^ 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run particle minecraft:end_rod ^-10 ^ ^ 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,tag=ritualoftheventhorizon] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run effect give @a[distance=..10] minecraft:jump_boost 1 25
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=..7200},tag=ritualoftheventhorizon] at @s run effect give @a[distance=..10] minecraft:levitation 5 250
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=7200..},tag=ritualoftheventhorizon] at @s run tag @s remove rctimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=7200..},tag=ritualoftheventhorizon] run tag @s remove ritualoftheventhorizon
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:26b,Amplifier:-1b}]},scores={RRTimer=7200..},tag=ritualoftheventhorizon] at @s run tp @s ~ ~ ~ 0 ~