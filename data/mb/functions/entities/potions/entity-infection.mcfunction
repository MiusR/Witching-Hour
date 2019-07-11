execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_infection"}}}] at @s run tag @s add boinfec
execute as @e[tag=boinfec,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["boinfecf"],DisabledSlots:4144959}
execute as @e[tag=boinfec,tag=!done] at @s run tag @s add done
execute as @e[tag=boinfecf] at @s run tp @s @e[tag=boinfec,limit=1,sort=nearest,distance=..1]
execute as @e[tag=boinfecf] at @s unless entity @e[tag=boinfec,distance=..1] run summon leash_knot ~ ~ ~ {Tags:["ipc"]}
execute as @e[tag=ipc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["infection"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:glowstone_dust",Count:1b,tag:{CustomModelData:121}}]}
execute as @e[tag=ipc] at @s run kill @s
execute as @e[type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:potion,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud,tag=!infcarrier] at @s if entity @e[tag=infection,type=armor_stand,distance=..1] run tag @s add infcarrier
execute as @e[type=armor_stand,tag=infection] at @s if block ~ ~-1 ~ air run kill @s
execute as @e[type=armor_stand,tag=infection] at @s unless block ~ ~ ~ air run kill @s
execute as @e[tag=boinfecf] at @s unless entity @e[tag=boinfec,distance=..1] run kill @s