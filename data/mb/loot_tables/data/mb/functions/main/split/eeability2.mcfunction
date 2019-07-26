execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add cab1
execute as @e[tag=eemovment,tag=cab1] at @s run data merge entity @s {NoAI:1b}
execute as @e[tag=eerighth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add gravtrap
execute as @e[tag=eelefth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run tag @s add gravtrap
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run playsound minecraft:block.end_portal.spawn master @a[distance=..40] ~ ~ ~ 100 0
execute as @e[tag=gravtrap] at @s run tp @s ~ ~ ~ ~70 ~
execute as @e[tag=eemovment] at @s if entity @e[tag=gravtrap,distance=..2] run particle minecraft:enchant ~ ~2 ~ 0 0 0 10 100 force
execute as @e[tag=gravtrap] at @s run scoreboard players add @s ADT 1
execute as @e[type=!zombie,type=!skeleton,type=!slime] at @s if entity @e[tag=gravtrap,distance=..10,scores={ADT=50..}] run effect give @s[] minecraft:wither 2 2 true
execute as @a at @s if entity @e[tag=gravtrap,distance=..10] run effect give @e[] minecraft:slowness 2 4 true
execute as @e[tag=eemovment] at @s if entity @e[tag=gravtrap,scores={ADT=150..},distance=..2] run tag @s remove cab1
execute as @e[tag=gravtrap,scores={ADT=150..}] run scoreboard players reset @s ADT
execute as @e[tag=gravtrap] at @s if entity @e[tag=eemovment,tag=!cab1,distance=..2] run tag @s remove gravtrap