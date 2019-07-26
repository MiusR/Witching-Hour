execute as @e[tag=eelefth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add pebble
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run tag @s add cab2
execute as @e[tag=eemovment,tag=cab2] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run playsound minecraft:block.anvil.place master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=pebble] at @s run particle minecraft:dust 0 0.5 1 1 ~ ~2 ~ 1 1 1 0 300 force
execute as @a at @s if entity @e[tag=pebble,distance=..20] run summon falling_block ~ ~5 ~ {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,FallHurtMax:9,FallHurtAmount:9f,Tags:["pebbleproj"]}
tag @e[tag=pebble,x_rotation=0] remove pebble
execute as @e[tag=pebble] at @s run tag @s remove pebble
execute as @e[tag=eemovment] at @s if entity @e[tag=eelefth,x_rotation=0] run tag @s remove cab2