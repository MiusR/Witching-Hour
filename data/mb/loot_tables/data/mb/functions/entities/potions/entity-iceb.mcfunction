execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_frost"}}}] at @s run tag @s add bof
execute as @e[tag=bof,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["boff"],DisabledSlots:4144959}
execute as @e[tag=bof,tag=!done] at @s run tag @s add done
execute as @e[tag=boff] at @s run tp @s @e[tag=bof,limit=1,sort=nearest,distance=..1]
execute as @e[tag=boff] at @s unless entity @e[tag=bof,distance=..1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["iceplace"],DisabledSlots:4144959}
execute as @e[tag=boff] at @s unless entity @e[tag=bof,distance=..1] run tag @e[type=!minecraft:armor_stand,type=!minecraft:arrow,type=!minecraft:boat,type=!minecraft:chest_minecart,type=!minecraft:dragon_fireball,type=!minecraft:egg,type=!minecraft:end_crystal,type=!minecraft:ender_pearl,type=!minecraft:evoker_fangs,type=!minecraft:experience_bottle,type=!minecraft:experience_orb,type=!minecraft:eye_of_ender,type=!minecraft:falling_block,type=!minecraft:fireball,type=!minecraft:firework_rocket,type=!minecraft:fishing_bobber,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:item,type=!minecraft:item_frame,type=!minecraft:leash_knot,type=!minecraft:lightning_bolt,type=!minecraft:llama_spit,type=!minecraft:minecart,type=!minecraft:painting,type=!minecraft:shulker_bullet,type=!minecraft:small_fireball,type=!minecraft:snowball,type=!minecraft:spawner_minecart,type=!minecraft:spectral_arrow,type=!minecraft:tnt_minecart,type=!minecraft:tnt,type=!minecraft:trident,type=!minecraft:wither_skull,type=!minecraft:area_effect_cloud,distance=..4] add iceincase
execute as @e[tag=boff] at @s unless entity @e[tag=bof,distance=..1] run kill @s
execute as @e[tag=iceincase] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["iceplace"],DisabledSlots:4144959}
execute as @e[tag=iceincase] run effect give @s minecraft:absorption 1 10
execute as @e[tag=iceplace,tag=!done] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 structure_void keep
execute as @e[tag=iceplace,tag=!done] at @s run summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["icer"],DeathLootTable:"543532453"}
execute as @e[tag=iceplace,tag=!done] at @s run tag @s add done
execute as @e[tag=iceplace,tag=done] at @s unless entity @e[tag=icer,distance=..3] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 ice replace air
execute as @e[tag=iceplace,tag=done] at @s unless entity @e[tag=icer,distance=..3] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace structure_void
execute as @e[tag=iceplace,tag=done] at @s unless entity @e[tag=icer,distance=..3] run kill @e[type=item,distance=..10]
execute as @e[tag=iceplace,tag=done] at @s unless entity @e[tag=icer,distance=..3] run kill @s
execute as @e[tag=iceincase] run tag @s remove iceincase