execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualofheavycattle] at @s run particle minecraft:flame ^ ^ ^10 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualofheavycattle] at @s run particle minecraft:flame ^ ^ ^-10 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualofheavycattle] at @s run particle minecraft:flame ^10 ^ ^ 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualofheavycattle] at @s run particle minecraft:flame ^-10 ^ ^ 0 1.5 0 1 0 force
execute as @e[tag=cmgc,tag=rctimer,tag=ritualofheavycattle] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=..36000},tag=ritualofheavycattle] at @s run summon falling_block ~ ~25 ~ {BlockState:{Name:"minecraft:damaged_anvil"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:40,FallHurtAmount:2f,Tags:["anvil_falling"]}
execute as @e[tag=anvil_falling,tag=!done] at @s run spreadplayers ~ ~ 1 7 false @s
execute as @e[tag=!done,tag=anvil_falling] at @s run tp @s ~ ~70 ~
execute as @e[tag=!done,tag=anvil_falling] at @s run tag @s add done
execute as @e[tag=cmgc,tag=rctimer,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=36000..},tag=ritualofheavycattle] at @s run tag @s remove rctimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=36000..},tag=ritualofheavycattle] run tag @s remove ritualofheavycattle
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:17b,Amplifier:-1b}]},scores={RRTimer=36000..},tag=ritualofheavycattle] at @s run tp @s ~ ~ ~ 0 ~