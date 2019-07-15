execute as @e[tag=ees] at @s if entity @p[distance=..8] run function mb:main/split/summonee
execute as @e[type=slime,tag=eehealth,tag=!summoned] at @s run function mb:main/split/summonee
execute as @e[tag=eehealth,scores={Life=0}] at @s run function mb:main/split/summonee
execute as @e[tag=eehealth] at @s unless score @s Life = @s LHBH run playsound minecraft:entity.iron_golem.hurt master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=eehealth] store result score @s LHBH run data get entity @s AbsorptionAmount

execute as @e[tag=eehealth] at @s unless entity @e[tag=cab,distance=..2] unless entity @e[tag=cab1,distance=..1] unless entity @e[tag=cab2,distance=..2] run scoreboard players add @s AT 1
scoreboard players add @e[tag=eehealth] Random 1

execute as @e[tag=eerighth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=1..8}] run function mb:main/split/eeability1

execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=9..16}] run function mb:main/split/eeability2

execute as @e[tag=eelefth] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=17..24}] run function mb:main/split/eeability3

execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=25..32}] run function mb:main/split/eeability4

execute as @e[tag=eemovment,tag=cab] at @s run function mb:main/split/eeability1

execute as @e[tag=eemovment,tag=cab1] at @s run function mb:main/split/eeability2

execute as @e[tag=eemovment,tag=cab2] at @s run function mb:main/split/eeability3


scoreboard players reset @e[tag=eehealth,scores={AT=100..}] AT
scoreboard players reset @e[tag=eehealth,scores={Random=32..}] Random
execute as @e[tag=eemovment,tag=!cab,tag=!cab1,tag=!cab2] at @s run data merge entity @s {NoAI:0b}
execute as @e[tag=eemovment] at @s run tp @e[tag=eehealth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eehealth] at @s run tp @e[tag=eetorso,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eehealth] at @s run tp @e[tag=eehead,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eemovment] at @s run tp @e[tag=eerighth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eemovment] at @s run tp @e[tag=eelefth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] @s
execute as @e[tag=eemovment] at @s run tp @e[tag=eerighth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] ~ ~ ~ ~ 0
execute as @e[tag=eemovment] at @s run tp @e[tag=eelefth,sort=nearest,distance=..2,tag=!pillars,tag=!gravtrap,tag=!pebble] ~ ~ ~ ~ 0