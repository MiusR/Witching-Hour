execute as @a[tag=blindeinf,tag=!soullinkp] if score @s Taglock = @e[limit=1,tag=soullinked] Taglocktemp run tag @s add soullinkp
execute as @a[tag=blindeinf,nbt={SelectedItem:{tag:{nediam:1b}}},scores={Rclick=1..,PlayerInfP=1000..},tag=!soullinkp] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["raycast","soullink"],DisabledSlots:4144959}
execute as @a[nbt={SelectedItem:{tag:{nediam:1b}}},scores={Rclick=1..,PlayerInfP=1000..},tag=soullinkp,tag=blindeinf] at @s run tellraw @s {"text":"You can only have one link at a time!","color":"red"}
execute as @a[nbt={SelectedItem:{tag:{nediam:1b}}},scores={Rclick=1..,PlayerInfP=1000..},tag=!soullinkp,tag=blindeinf] at @s run scoreboard players remove @s PlayerInfP 1000
execute as @a[nbt={SelectedItem:{tag:{nediam:1b}}},scores={Rclick=1..}] at @s run scoreboard players set @s Rclick 0
execute as @e[type=armor_stand,tag=soullink,tag=!init] at @s run tp @s @p[distance=..1]
execute as @e[type=armor_stand,tag=soullink,tag=!init] at @s run tp @s ~ ~1.7 ~
execute as @e[type=armor_stand,tag=soullink,tag=!init] at @s positioned ~ ~ ~ store result score @s Taglocktemp run scoreboard players get @p[dy=3.5,dx=0.3,dz=0.3] Taglock
execute as @e[type=armor_stand,tag=soullink,tag=!init] at @s run tag @s add init
execute as @e[type=armor_stand,tag=soullink,tag=init] at @s run tp @s ^ ^ ^0.5
execute as @e[type=armor_stand,tag=soullink,tag=init] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1
execute as @e[tag=soullinked] store result score @s Life run data get entity @s Health 1
execute as @e[type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:potion,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud,type=!player,sort=nearest] at @s positioned ~ ~ ~ if entity @e[tag=soullink,tag=init,dy=3.5,dx=0.3,dz=0.3] run tag @s add soullinked
execute as @e[tag=soullinked,tag=!init] at @s positioned ~ ~ ~ store result score @s Taglocktemp run scoreboard players get @e[tag=soullink,dy=3.5,dx=0.3,dz=0.3,limit=1] Taglocktemp
execute as @e[tag=soullinked,tag=!init] at @s positioned ~ ~ ~ run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.2 150
execute as @e[tag=soullinked,tag=!init] at @s positioned ~ ~ ~ run playsound minecraft:block.beacon.power_select master @a[distance=..30] ~ ~ ~ 50 1
execute as @e[tag=soullinked,tag=!init] at @s positioned ~ ~ ~ run kill @e[type=armor_stand,tag=soullink,tag=init,dy=3.5,dx=0.3,dz=0.3,limit=1]
execute as @e[tag=soullinked,tag=!init] at @s run tag @s add init
execute as @p[tag=!takendamage,limit=1] if score @s StoredDamage > @s PlayerHealth run tag @s add takendamage
execute as @e[tag=soullinked,tag=init,limit=1,tag=!moveddamage] at @s if score @s Taglocktemp = @a[limit=1,tag=takendamage,distance=..30] Taglock run tag @s add moveddamage
execute at @e[tag=soullinked,tag=moveddamage] as @a[tag=takendamage,distance=..30] run scoreboard players operation @s StoredDamage -= @s PlayerHealth
execute at @e[tag=soullinked,tag=moveddamage] as @a[tag=takendamage,distance=..30] run scoreboard players operation @s StoredDamage *= double StoredDamage
execute as @e[tag=soullinked,tag=moveddamage] at @s run scoreboard players operation @s Life -= @a[limit=1,tag=takendamage,distance=..30] StoredDamage
execute as @e[tag=soullinked,tag=moveddamage] at @s store result entity @s Health float 1 run scoreboard players get @s Life
execute as @e[tag=soullinked,tag=moveddamage] at @s run effect give @s minecraft:glowing 1 2
tag @e remove moveddamage
execute as @a[tag=soullinkp,tag=takendamage] run effect give @s minecraft:regeneration 1 5
execute as @a[tag=soullinkp,tag=takendamage] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bounddisplay"],DisabledSlots:4144959}
tag @a remove takendamage
execute as @e[tag=bounddisplay] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=soullinked] eyes
execute as @e[tag=bounddisplay] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=bounddisplay] at @s positioned ~ ~ ~ if entity @e[tag=soullinked,dy=3.5,dx=0.3,dz=0.3] run kill @s
execute as @e[tag=bounddisplay] at @s positioned ~ ~ ~ unless entity @e[tag=soullinked,distance=..30] run kill @s
execute as @e[tag=bounddisplay] at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0 3
execute as @a[] run scoreboard players operation @s StoredDamage = @s PlayerHealth
execute as @e[type=armor_stand,tag=soullink,tag=init] at @s run scoreboard players add @s Life 1
execute as @e[type=armor_stand,tag=soullink,tag=init,scores={Life=45..}] at @s run kill @s
execute as @e[type=armor_stand,tag=soullink,tag=init] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=soullinked] at @s run particle minecraft:mycelium ~ ~1 ~ 0.3 0.6 0.3 0 20
execute as @a[tag=blindeinf,tag=soullinkp] run tag @s remove soullinkp