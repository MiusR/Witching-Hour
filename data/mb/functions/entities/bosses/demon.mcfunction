execute as @e[tag=demon,tag=!done] at @s run tag @s add done
execute as @e[tag=demon,tag=!inv] at @s run tag @s add inv
execute as @e[tag=demon] at @s run tp @e[tag=demontrade,distance=..1,limit=1] @s
execute as @e[tag=demontrade] at @s unless entity @e[tag=demon,distance=..1] run kill @s
execute as @e[tag=demon] at @s if score @s Life < @s LHBH run playsound minecraft:entity.phantom.hurt master @a[distance=..20] ~ ~ ~ 50 1
execute as @e[tag=demon] at @s if score @s Life < @s LHBH run summon wither_skeleton ~ ~ ~ {ActiveEffects:[{Id:28b,Amplifier:5b,Duration:400,ShowParticles:0b}],Attributes:[{Name:generic.attackDamage,Base:3}]}
execute as @e[tag=demon] at @s if score @s Life < @s LHBH run particle minecraft:flame ~ ~ ~ 0 0 0 0.5 100
execute as @e[tag=demon] at @s run scoreboard players operation @s LHBH = @s Life
execute as @e[tag=demon] at @s run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0 30 force