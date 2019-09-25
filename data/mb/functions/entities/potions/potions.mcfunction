execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_truth"}}}] run function mb:entities/potions/entity-revealingb
execute as @e[tag=borf] at @s unless entity @e[distance=..1,tag=bor] run function mb:entities/potions/entity-revealingb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_cursed_feet"}}}] at @s run function mb:entities/potions/entity-cursedfeetb
execute as @e[tag=bocff] at @s unless entity @e[distance=..1,tag=bocf] run function mb:entities/potions/entity-cursedfeetb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_frost"}}}] at @s run function mb:entities/potions/entity-iceb
execute as @e[tag=boff] at @s unless entity @e[distance=..1,tag=bof] run function mb:entities/potions/entity-iceb
execute as @e[tag=iceplace] at @s run function mb:entities/potions/entity-iceb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_tangeled_webs"}}}] at @s run function mb:entities/potions/entity-websb
execute as @e[tag=botwf] at @s unless entity @e[distance=..1,tag=botw] run function mb:entities/potions/entity-websb
execute as @e[tag=cobwebincase] at @s run function mb:entities/potions/entity-websb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_volitatility"}}}] at @s run function mb:entities/potions/entity-volatilityb
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run function mb:entities/potions/entity-volatilityb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_entrapment"}}}] at @s run function mb:entities/potions/entity-entrapb
execute as @e[tag=boef] at @s unless entity @e[tag=boe,distance=..1] run function mb:entities/potions/entity-entrapb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_combustion"}}}] at @s run function mb:entities/potions/entity-combb
execute as @e[tag=bocombf] at @s unless entity @e[tag=boc,distance=..1] run function mb:entities/potions/entity-combb
execute as @e[tag=combustionp] at @s run function mb:entities/potions/entity-combb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_lightning"}}}] at @s run function mb:entities/potions/entity-lightning
execute as @e[tag=bolf] at @s run function mb:entities/potions/entity-lightning

execute as @a[nbt={Inventory:[{tag:{id:"brew_of_patience"}}]}] unless score @s PatienceP matches 40000 run scoreboard players add @s PatienceP 1
execute as @a[nbt={SelectedItem:{tag:{id:"brew_of_patience"}}},scores={PatienceP=..19999}] run title @s actionbar [{"score":{"name":"*","objective":"PatienceP"},"color":"red"},{"text":" Ticks","color":"reset"}]
execute as @a[nbt={SelectedItem:{tag:{id:"brew_of_patience"}}},scores={PatienceP=20000..}] run title @s actionbar [{"score":{"name":"*","objective":"PatienceP"},"color":"green"},{"text":" Ticks","color":"reset"}]
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_patience"}}},tag=!done] at @s run function mb:entities/potions/entity-patience
execute as @e[tag=bopatiencef] at @s run function mb:entities/potions/entity-patience
execute as @e[tag=clockb,tag=!done] at @s store result score @s PatienceP run scoreboard players get @p[distance=..20,limit=1] PatienceP
execute as @e[tag=clockb,tag=!done] at @s run scoreboard players reset @p[distance=..20,limit=1] PatienceP
execute as @e[tag=clockb,tag=!done] run scoreboard players operation @s PatienceP /= 60 PatienceP
execute as @e[tag=clockb,tag=!done] run tag @s add done
execute as @e[tag=clockb,tag=done] run gamerule randomTickSpeed 10000
execute as @e[tag=clockb,tag=done] run time add 5000t
execute as @e[tag=clockb,tag=done] run scoreboard players remove @s PatienceP 2
execute as @e[tag=clockb,tag=done,scores={PatienceP=..0}] run gamerule randomTickSpeed 3
execute as @e[tag=clockb,tag=done,scores={PatienceP=..0}] run tellraw @a {"text":"<Temporus> The event has ended we survived it yet agian!","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":"Time passes normally"}}
execute as @e[tag=clockb,tag=done,scores={PatienceP=..0}] run kill @s

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_love"}}},tag=!done] at @s run function mb:entities/potions/entity-love
execute as @e[tag=bolovef] at @s run function mb:entities/potions/entity-love
execute as @e[tag=love] at @s run function mb:entities/potions/entity-love

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_raising"}}},tag=!done] at @s run function mb:entities/potions/entity-raising
execute as @e[tag=borasisingf] at @s run function mb:entities/potions/entity-raising

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_ender_chaos"}}},tag=!done] at @s run function mb:entities/potions/entity-enderc
execute as @e[tag=enderchaos] run scoreboard players add @s EnderC 1
execute as @e[tag=enderchaos] at @s run spreadplayers ~ ~ 3 10 false @s
execute as @e[tag=enderchaos,scores={EnderC=50..}] at @s run tag @s remove enderchaos
execute as @e[scores={EnderC=50..}] at @s run scoreboard players reset @s EnderC
execute as @e[tag=boecf] at @s run function mb:entities/potions/entity-enderc

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_cobblestone"}}},tag=!done] at @s run function mb:entities/potions/entity-cobblestone
execute as @e[tag=bocobblef] at @s run function mb:entities/potions/entity-cobblestone
execute as @e[tag=stoneplacep] at @s run function mb:entities/potions/entity-cobblestone

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s run function mb:entities/potions/entity-forest
execute as @e[tag=botforestf] at @s run function mb:entities/potions/entity-forest
execute as @e[tag=tree] at @s run function mb:entities/potions/entity-forest
execute as @e[tag=oeakleaverp] at @s run function mb:entities/potions/entity-forest

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_leech"}}},tag=!done] at @s run function mb:entities/potions/entity-leech
execute as @e[tag=botleechf] at @s run function mb:entities/potions/entity-leech

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_infection"}}},tag=!done] at @s run function mb:entities/potions/entity-infection
execute as @e[tag=ipc] at @s run function mb:entities/potions/entity-infection
execute as @e[tag=boinfecf] at @s run function mb:entities/potions/entity-infection
execute as @e[tag=infcarrier] at @s run function mb:entities/potions/entity-infection
execute as @e[tag=infection] at @s run function mb:entities/potions/entity-infection

execute as @e[tag=infcarrier] run effect give @s wither 1 1

execute as @e[type=armor_stand,tag=infection] run scoreboard players add @s Timer 1
execute as @e[tag=infcarrier] run scoreboard players add @s TimerInf 1
execute as @e[tag=infcarrier,scores={TimerInf=..190}] at @s unless block ~ ~-1 ~ air unless entity @e[type=armor_stand,tag=infection,distance=..2] unless entity @e[type=leash_knot,tag=ipcc,distance=..2] run summon leash_knot ~ ~ ~ {Tags:["ipcc"]}
execute as @e[tag=ipcc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["infection"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:121}}]}
execute as @e[type=leash_knot,tag=ipcc] at @s run kill @s
execute as @e[scores={TimerInf=200..}] run tag @s remove infcarrier
execute as @e[scores={TimerInf=200..}] run scoreboard players reset @s TimerInf
execute as @e[type=armor_stand,tag=infection,scores={Timer=100..}] run kill @s

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] at @s run function mb:entities/potions/entity-mystery
execute as @e[tag=bomysteryf] at @s run function mb:entities/potions/entity-mystery