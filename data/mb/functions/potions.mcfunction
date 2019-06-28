execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_truth"}}}] run function mb:entities/potions/entity-revealingb
execute as @e[tag=borf] at @s unless entity @e[distance=..1,tag=bor] run function mb:entities/potions/entity-revealingb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{brewofcuresedfeet:1b}}}] at @s run function mb:entities/potions/entity-cursedfeetb
execute as @e[tag=bocff] at @s unless entity @e[distance=..1,tag=bocf] run function mb:entities/potions/entity-cursedfeetb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_frostt"}}}] at @s run function mb:entities/potions/entity-iceb
execute as @e[tag=boff] at @s unless entity @e[distance=..1,tag=bof] run function mb:entities/potions/entity-iceb
execute as @e[tag=iceplace] at @s run function mb:entities/potions/entity-iceb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_tangeled_webs"}}}] at @s run function mb:entities/potions/entity-websb
execute as @e[tag=botwf] at @s unless entity @e[distance=..1,tag=botw] run function mb:entities/potions/entity-websb
execute as @e[tag=cobwebincase] at @s run function mb:entities/potions/entity-websb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{brewofvolatility:1b}}}] at @s run function mb:entities/potions/entity-volatilityb
execute as @e[tag=bovf] at @s unless entity @e[tag=bov,distance=..1] run function mb:entities/potions/entity-volatilityb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_entrapment"}}}] at @s run function mb:entities/potions/entity-entrapb
execute as @e[tag=boef] at @s unless entity @e[tag=boe,distance=..1] run function mb:entities/potions/entity-entrapb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_combustion"}}}] at @s run function mb:entities/potions/entity-combb
execute as @e[tag=bocf] at @s unless entity @e[tag=boc,distance=..1] run function mb:entities/potions/entity-combb
execute as @e[tag=combustionp] at @s run function mb:entities/potions/entity-combb

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_lightning"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon lightning_bolt ~ ~ ~
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_lightning"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done

execute as @a[nbt={Inventory:[{tag:{id:"brew_of_patience"}}]}] unless score @s PatienceP matches 40000 run scoreboard players add @s PatienceP 1
execute as @a[nbt={SelectedItem:{tag:{id:"brew_of_patience"}}},scores={PatienceP=..19999}] run title @s actionbar [{"score":{"name":"*","objective":"PatienceP"},"color":"red"},{"text":" Ticks","color":"reset"}]
execute as @a[nbt={SelectedItem:{tag:{id:"brew_of_patience"}}},scores={PatienceP=20000..}] run title @s actionbar [{"score":{"name":"*","objective":"PatienceP"},"color":"green"},{"text":" Ticks","color":"reset"}]
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_patience"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon giant ~2 ~-5 ~-5 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"5678",NoAI:1b,Tags:["inv","clockb"],HandItems:[{id:"minecraft:clock",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:200,ShowParticles:0b}]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_patience"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 100 2
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_patience"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run tellraw @a {"text":"<Temporus> A rupture in time has just occurred beware the merging!","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":"Time goes much faster for a duration!"}}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_patience"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done
execute as @e[tag=clockb,tag=!done] at @s store result score @s PatienceP run scoreboard players get @p[distance=..20,limit=1] PatienceP
execute as @e[tag=clockb,tag=!done] at @s run scoreboard players reset @p[distance=..20,limit=1] PatienceP
execute as @e[tag=clockb,tag=!done] run scoreboard players operation @s PatienceP /= 60 PatienceP
execute as @e[tag=clockb,tag=!done] run tag @s add done
execute as @e[tag=clockb,tag=done] run gamerule randomTickSpeed 10000
execute as @e[tag=clockb,tag=done] run time add 15t
execute as @e[tag=clockb,tag=done] run scoreboard players remove @s PatienceP 2
execute as @e[tag=clockb,tag=done,scores={PatienceP=..0}] run gamerule randomTickSpeed 3
execute as @e[tag=clockb,tag=done,scores={PatienceP=..0}] run tellraw @a {"text":"<Temporus> The event has ended we survived it yet agian!","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":"Time passes normally"}}
execute as @e[tag=clockb,tag=done,scores={PatienceP=..0}] run kill @s

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_love"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run particle minecraft:heart ~ ~ ~ 2 0.5 2 0 100
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_love"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @e[type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:potion,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud,type=!player,distance=..5] add love
data merge entity @e[tag=love,limit=1] {InLove:600}
execute as @e[tag=love,limit=1] run tag @s remove love
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_love"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_raising"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon skeleton ~ ~ ~ {Team:"UF",HandItems:[{},{id:"minecraft:stone_pickaxe",Count:1b}],Tags:["summoned","joinUF"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_raising"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_ender_chaos"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @e[distance=..3,type=!potion] add enderchaos
execute as @e[tag=enderchaos] run scoreboard players add @s EnderC 1
execute as @e[tag=enderchaos] at @s run spreadplayers ~ ~ 3 10 false @s
execute as @e[tag=enderchaos,scores={EnderC=50..}] at @s run tag @s remove enderchaos
execute as @e[scores={EnderC=50..}] at @s run scoreboard players reset @s EnderC
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_ender_chaos"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_cobblestone"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["stoneplacep"],DisabledSlots:4144959}
execute as @e[tag=stoneplacep,tag=!done] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 structure_void keep
execute as @e[tag=stoneplacep,tag=!done] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["stoner"],DeathLootTable:"543532453"}
execute as @e[tag=stoneplacep,tag=!done] at @s run tag @s add done
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 cobblestone replace air
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace structure_void
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run kill @e[type=item,distance=..10]
execute as @e[tag=stoneplacep,tag=done] at @s unless entity @e[tag=stoner,distance=..3] run kill @s
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_cobblestone"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["tree","inv"]}
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_forest"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done
execute as @e[tag=tree] at @s run setblock ~ ~ ~ minecraft:oak_wood
execute as @e[tag=tree] at @s run scoreboard players add @s Life 1
execute as @e[tag=tree,scores={Life=47}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["oeakleaverp"],DisabledSlots:4144959}
execute as @e[tag=oeakleaverp,tag=!done] at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 structure_void keep
execute as @e[tag=oeakleaverp,tag=!done] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["oakleaver"],DeathLootTable:"543532453"}
execute as @e[tag=oeakleaverp,tag=!done] at @s run tag @s add done
execute as @e[tag=oeakleaverp,tag=done] at @s unless entity @e[tag=oakleaver,distance=..3] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 oak_leaves replace air
execute as @e[tag=oeakleaverp,tag=done] at @s unless entity @e[tag=oakleaver,distance=..3] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace structure_void
execute as @e[tag=oeakleaverp,tag=done] at @s unless entity @e[tag=oakleaver,distance=..3] run kill @s
execute as @e[tag=tree,scores={Life=50..}] at @s run kill @e[type=item,distance=..10]
execute as @e[tag=tree,scores={Life=50..}] at @s run kill @s

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_leech"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air if entity @e[type=!player,distance=..5,type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:potion,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud] run effect give @a[distance=..5] minecraft:regeneration 5 1
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_leech"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run effect give @e[type=!player,distance=..5] wither 20 2
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_the_leech"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done

execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_infection"}}},tag=!done] at @s unless block ~ ~-0.5 ~ minecraft:air run summon leash_knot ~ ~ ~ {Tags:["ipc"]}
execute as @e[tag=ipc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["infection"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:121}}]}
execute as @e[tag=ipc] at @s run kill @s
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_infection"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done
execute as @e[type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:potion,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud,tag=!infcarrier] at @s if entity @e[tag=infection,type=armor_stand,distance=..1] run tag @s add infcarrier

execute as @e[tag=infcarrier] run effect give @s wither 1 1

execute as @e[type=armor_stand,tag=infection] run scoreboard players add @s Timer 1
execute as @e[tag=infcarrier] run scoreboard players add @s TimerInf 1
execute as @e[tag=infcarrier,scores={TimerInf=..190}] at @s unless block ~ ~-1 ~ air unless entity @e[type=armor_stand,tag=infection,distance=..2] unless entity @e[type=leash_knot,tag=ipcc,distance=..2] run summon leash_knot ~ ~ ~ {Tags:["ipcc"]}
execute as @e[tag=ipcc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["infection"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:121}}]}
execute as @e[type=leash_knot,tag=ipcc] at @s run kill @s
execute as @e[scores={TimerInf=200..}] run tag @s remove infcarrier
execute as @e[scores={TimerInf=200..}] run scoreboard players reset @s TimerInf
execute as @e[type=armor_stand,tag=infection,scores={Timer=100..}] run kill @s
execute as @e[type=armor_stand,tag=infection] at @s if block ~ ~-1 ~ air run kill @s

execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=..3}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s jump_boost 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=..3}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s invisibility 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=..3}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s night_vision 20 3

execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=4..6}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s absorption 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=4..6}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s strength 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=4..6}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s resistance 20 3

execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=7..9}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s luck 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=7..9}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s speed 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=7..9}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s haste 20 3

execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=10..12}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s fire_resistance 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=10..12}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s regeneration 20 3
execute at @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}},tag=!done] as @a[distance=..5,scores={Random12=10..12}] unless block ~ ~-0.5 ~ minecraft:air run effect give @s water_breathing 20 3
execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}}] at @s unless block ~ ~-0.5 ~ minecraft:air run tag @s add done