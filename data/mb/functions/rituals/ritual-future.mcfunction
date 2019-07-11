execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"quartz_ball"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"mystic_oinment"}}}] run tag @e[tag=magicaltar,distance=..20,limit=1] add rlp
execute as @e[tag=!rtimer,tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"quartz_ball"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"mystic_oinment"}}}] run tag @s add ritualoft
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"quartz_ball"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"mystic_oinment"}}}] run tag @s add rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"quartz_ball"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"mystic_oinment"}}}] run playsound minecraft:block.note_block.bell master @a[distance=..20] ~ ~ ~ 50 0.7
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]}] at @s if entity @e[tag=magicaltar,distance=..20,scores={Power=250..}] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:gold_ingot",Count:2b}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"quartz_ball"}}}] if entity @e[type=item,distance=..3,nbt={Item:{tag:{id:"mystic_oinment"}}}] run kill @e[distance=..3,type=item]
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoft] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoft] at @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.5 200
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoft] at @s run loot spawn ~ ~1 ~ loot mb:items/magic_ball
execute as @e[tag=cmgc,tag=rtimer,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoft] at @s run tag @s remove rtimer
execute as @e[tag=cmgc,nbt={ActiveEffects:[{Id:5b,Amplifier:-1b}]},scores={Timer=150..},tag=ritualoft] run tag @s remove ritualoft