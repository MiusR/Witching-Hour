execute as @e[type=minecraft:potion,nbt={Potion:{tag:{brewoftangledwebs:1b}}},tag=!done] at @s run tag @s add botw
execute as @e[tag=botw,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["botwf"],DisabledSlots:4144959}
execute as @e[tag=botw,tag=!done] at @s run tag @s add done
execute as @e[tag=botwf] at @s run tp @s @e[tag=botw,limit=1,sort=nearest,distance=..1]
execute as @e[tag=botwf] at @s unless entity @e[type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:potion,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud,distance=..4] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["cobwebincase","killwd"],DisabledSlots:4144959}
execute as @e[distance=..4] at @e[tag=botwf] unless entity @e[tag=botw,distance=..1] run tag @s add cobwebincase
execute as @e[tag=cobwebincase] at @s run fill ~ ~ ~ ~ ~1 ~ cobweb
execute as @e[tag=cobwebincase] at @s run setblock ~1 ~ ~ cobweb
execute as @e[tag=cobwebincase] at @s run setblock ~-1 ~ ~ cobweb
execute as @e[tag=cobwebincase] at @s run setblock ~ ~ ~1 cobweb
execute as @e[tag=cobwebincase] at @s run setblock ~ ~ ~-1 cobweb
execute as @e[tag=cobwebincase,tag=killwd] run kill @s
execute as @e[tag=cobwebincase] at @s run tag @s remove cobwebincase
execute as @e[tag=botwf] at @s unless entity @e[tag=botw,distance=..1] run kill @s