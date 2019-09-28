execute as @p[tag=soulotp,nbt={SelectedItem:{tag:{id:"dimensional_mirror"}}},scores={Rclick=1..,Sneak=0,PlayerInfP=100..}] run tag @s add warpi
execute as @a[tag=!lockedwarp,tag=warpi,tag=soulotp,scores={Rclick=1..,Sneak=0}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["warpip"],DisabledSlots:4144959}
execute as @a[tag=!lockedwarp,tag=warpi,tag=soulotp,scores={Rclick=1..,Sneak=0}] at @s run scoreboard players remove @s PlayerInfP 100
execute as @a[tag=!lockedwarp,tag=warpi,tag=soulotp,scores={Rclick=1..,Sneak=0}] at @s run tag @s add clearchat
execute as @a[tag=!lockedwarp,tag=warpi,tag=soulotp,scores={Rclick=1..,Sneak=0}] at @s run tag @s add forceDIP
execute as @p[tag=soulotp,nbt={SelectedItem:{tag:{id:"dimensional_mirror"}}},scores={Rclick=1..,Sneak=0,PlayerInfP=100..}] run tag @s add lockedwarp
execute as @p[tag=soulotp,nbt={SelectedItem:{tag:{id:"dimensional_mirror"}}},scores={Rclick=1..,Sneak=0}] run scoreboard players set @s Rclick 0
execute as @a[tag=soulotp,scores={Rclick=1..,Sneak=1..,PlayerInfP=500..},nbt={Dimension:0}] at @s run tag @s add overworldp
execute as @a[tag=soulotp,scores={Rclick=1..,Sneak=1..,PlayerInfP=500..},nbt={Dimension:-1}] at @s run tag @s add netherp
execute as @a[tag=overworldp] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @a[tag=overworldp] at @s in minecraft:the_nether run effect give @s minecraft:fire_resistance
execute as @a[tag=overworldp] at @s in minecraft:the_nether run setblock ~ ~2 ~ air
execute as @a[tag=netherp] at @s in minecraft:overworld run tp @s ~ ~ ~
execute as @a[tag=netherp] at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 50 1
execute as @a[tag=overworldp] at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 50 1
execute as @a[tag=netherp] at @s run tag @s remove netherp
execute as @a[tag=overworldp] at @s run tag @s remove overworldp
execute as @a[tag=soulotp,scores={Rclick=1..,Sneak=1..,PlayerInfP=500..}] at @s run scoreboard players remove @s PlayerInfP 500
execute as @a[tag=soulotp,scores={Rclick=1..,Sneak=1..,PlayerInfP=500..}] at @s run tag @s add forceDIP
execute as @p[tag=soulotp,nbt={SelectedItem:{tag:{id:"dimensional_mirror"}}},scores={Rclick=1..,Sneak=1..,PlayerInfP=500..}] run scoreboard players set @s Rclick 0
execute as @s[nbt={Dimension:0}] in minecraft:the_nether run tp ~ ~ ~
execute as @e[tag=warpip,tag=!init] at @s run tp @s @p[distance=..1]
execute as @e[tag=warpip,tag=!init] at @s run tp @s ~ ~1.3 ~
execute as @e[tag=warpip,tag=!init] at @s run tag @s add init