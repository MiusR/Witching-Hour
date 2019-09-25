execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=25..32}] run tag @s add ssilverf
execute as @e[tag=eemovment] at @s if entity @e[tag=eehealth,distance=..2,sort=nearest,scores={AT=100..,Random=25..32}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=ssilverf] at @s run scoreboard players add @s ADT 1
execute as @e[tag=ssilverf] at @s run summon zombie ~ ~ ~ {Health:1f,IsBaby:1b,Tags:["fr"],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:40,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:1}]}
execute as @e[type=silverfish,tag=eessf] at @s if entity @e[tag=ssilverf,distance=..20] run spreadplayers ~ ~ 3 10 false @s
execute as @e[tag=ssilverf,scores={ADT=20..}] at @s run tag @s add donu
execute as @e[tag=ssilverf,tag=donu] at @s run scoreboard players reset @s ADT
execute as @e[tag=ssilverf,tag=donu] at @s run tag @s remove ssilverf
execute as @e[tag=donu] at @s run tag @s remove donu