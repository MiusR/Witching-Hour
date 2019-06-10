execute as @e[type=item,nbt={Item:{tag:{roots:1b},Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blue_orchid",Count:1b}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}},distance=..1] if block ~ ~ ~ cauldron[level=3] unless entity @e[tag=cauldron,distance=..1] run summon leash_knot ~ ~ ~ {Tags:["mcc"]}
execute as @e[tag=mcc] at @s run kill @e[type=item,distance=..1]
execute as @e[tag=mcc] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["cauldron"],DisabledSlots:4144959}
execute as @e[tag=mcc] at @s run playsound minecraft:block.lava.extinguish master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[tag=mcc] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 3
execute as @e[tag=mcc] run kill @s
execute as @e[tag=cauldron] at @s if block ~ ~ ~ air run kill @s
execute as @e[type=armor_stand,tag=cauldron,tag=timer] at @s run scoreboard players add @s Timer 1
execute as @e[tag=cauldron,tag=timer] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 1
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run tag @s add done
execute as @e[type=item,tag=!nosplash] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run playsound minecraft:entity.boat.paddle_water master @a[distance=..10] ~ ~ ~ 100 1
execute as @e[type=item,tag=!nosplash] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run particle minecraft:rain ~ ~ ~ 0 0 0 1 40
execute as @e[type=item] at @s if entity @e[tag=cauldron] if block ~ ~ ~ cauldron[level=3] run tag @s add nosplash

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:oak_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-botmg
execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:jungle_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-botmg
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmgb] at @s run function mb:items/ingredients/potion-botmg

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-hoa
execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-hoa
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rhoa] at @s run function mb:items/ingredients/potion-hoa

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:birch_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:acacia_sapling",Count:3b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lp
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rlop] at @s run function mb:items/ingredients/potion-lp

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:cactus",Count:5b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-oot
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=roop] at @s run function mb:items/ingredients/potion-oot

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:4b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-ef
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=lpp] at @s run function mb:items/ingredients/potion-ef

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:8b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-fu
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=fup] at @s run function mb:items/ingredients/potion-fu

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lf
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=lfp] at @s run function mb:items/ingredients/potion-lf

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{mgpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-skyt
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rst] at @s run function mb:items/ingredients/potion-skyt

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:potato",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{hapotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-poison_potato
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rpp] at @s run function mb:items/ingredients/item-poison_potato

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:magma_cream",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lppotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-slime_ball
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsb] at @s run function mb:items/ingredients/item-slime_ball

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lfpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire if entity @e[type=item,distance=..1,nbt={Item:{tag:{fupotion:1b}}}] run function mb:items/ingredients/item-horror_dust
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsep] at @s run function mb:items/ingredients/item-horror_dust

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:slime_ball",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lfpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire if entity @e[type=item,distance=..1,nbt={Item:{tag:{horrord:1b}}}] run function mb:items/ingredients/item-toe_of_frog
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rsf] at @s run function mb:items/ingredients/item-toe_of_frog

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{fupotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{oppotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-bp
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbp] at @s run function mb:items/ingredients/potion-bp

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{oppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{dvpotion:1b},Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{lfpotion:1b},Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{ehpotion:1b},Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=250..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-lq
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rglp] at @s run function mb:items/ingredients/potion-lq

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{hapotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{efpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-eh
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rehp] at @s run function mb:items/ingredients/potion-eh

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{hapotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{mgpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-nt
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rntp] at @s run function mb:items/ingredients/potion-nt

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{lppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{fupotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-leather
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rcl] at @s run function mb:items/ingredients/item-leather

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{efpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lfpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-catalist
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rpc] at @s run function mb:items/ingredients/item-catalist

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{oppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ink_sac",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:charcoal",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-darkness
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbblindness] at @s run function mb:items/potions/brew-darkness

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{lppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:snowball",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-truth
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbtruth] at @s run function mb:items/potions/brew-truth

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{bppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{ntpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{toeoffrog:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-cleaping
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbocl] at @s run function mb:items/potions/brew-cleaping

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{mgpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:packed_ice",Count:4b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{stpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-frost
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbofrost] at @s run function mb:items/potions/brew-frost

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{ntpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cobweb",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{horrord:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-webs
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbotwebs] at @s run function mb:items/potions/brew-webs

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{ehpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{ntpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{oppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:tnt",Count:3b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{bppotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-tnt
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboctnt] at @s run function mb:items/potions/brew-tnt

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{efpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{brewoftangledwebs:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-entrap
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboentrapment] at @s run function mb:items/potions/brew-entrap

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{lfpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{ehpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:coal",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-comb
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboignition] at @s run function mb:items/potions/brew-comb

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{bppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{stpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lppotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-lightning
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbolightning] at @s run function mb:items/potions/brew-lightning

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{hapotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{catalist:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{tod:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{lqpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{toeoffrog:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-patience
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboticks] at @s run function mb:items/potions/brew-patience

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{ehpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:rotten_flesh",Count:3b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-hunger
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbohunger] at @s run function mb:items/potions/brew-hunger

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{mgpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:wheat",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_pad",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cookie",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-love
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbolove] at @s run function mb:items/potions/brew-love

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{fupotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{roots:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-stoneskin
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbostoneskin] at @s run function mb:items/potions/brew-stoneskin

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{fupotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{mgpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1,tag=rboraising] if block ~ ~-1 ~ fire run function mb:items/potions/brew-raising
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboraising] at @s run function mb:items/potions/brew-raising

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{efpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:feather",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{ntpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-ender
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboenderchaos] at @s run function mb:items/potions/brew-ender

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{hapotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cobblestone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone_pickaxe",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-cobble
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbocobble] at @s run function mb:items/potions/brew-cobble

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{mgpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{tod:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{stpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-forest
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboforest] at @s run function mb:items/potions/brew-forest

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{stpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:bone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/active-wchalk
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rchalkw] at @s run function mb:items/active/active-wchalk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{wchalk:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sunflower",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/active-gchalk
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rchalkg] at @s run function mb:items/active/active-gchalk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{wchalk:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:nether_wart",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/active/active-ichalk
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rchalki] at @s run function mb:items/active/active-ichalk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{catalist:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/item-gcatalist
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rgcatalist] at @s run function mb:items/ingredients/item-gcatalist

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{bppotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:healing"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=5..},limit=1] if block ~ ~-1 ~ fire run function mb:items/potions/brew-bhealing
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbobhealing] at @s run function mb:items/potions/brew-bhealing

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{tag:{demonhearth:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run function mb:items/ingredients/potion-demonblood
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdblood] at @s run function mb:items/ingredients/potion-demonblood

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{bppotion:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{tod:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{dbpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{tag:{ehpotion:1b}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rboleech
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rboleech] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rboleech] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rboleech] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboleech] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:splash_potion",Count:3b,tag:{CustomModelData:14,brewofleech:1b,display:{Name:"{\"text\":\"Brew of the Leech\",\"color\":\"green\"}"},HideFlags:63,CustomPotionColor:16233471}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboleech] at @s run tag @s remove rboleech

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{brewofleech:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{woolofbat:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:fermented_spider_eye",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:rotten_flesh",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rboinfection
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rboinfection] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rboinfection] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rboinfection] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboinfection] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:splash_potion",Count:3b,tag:{CustomModelData:15,brewofinfection:1b,display:{Name:"{\"text\":\"Brew of Infection\",\"color\":\"green\"}"},HideFlags:63,CustomPotionColor:0}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rboinfection] at @s run tag @s remove rboinfection

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:poppy",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dandelion",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cornflower",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:allium",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_of_the_valley",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rbomistery
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rbomistery] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rbomistery] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rbomistery] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbomistery] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:splash_potion",Count:3b,tag:{CustomModelData:16,brewofmistery:1b,display:{Name:"{\"text\":\"Brew of Mistery\",\"color\":\"green\"}"},HideFlags:63,CustomPotionColor:10444543}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rbomistery] at @s run tag @s remove rbomistery

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:quartz_block",Count:6b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rqurtzsphere
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rqurtzsphere] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rqurtzsphere] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rqurtzsphere] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rqurtzsphere] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{display:{Name:"{\"text\":\"Quartz Ball\",\"color\":\"green\"}"},HideFlags:63,CustomModelData:122,csphere:1b}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rqurtzsphere] at @s run tag @s remove rqurtzsphere

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{lqpotion:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{tod:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:redstone",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:apple",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=200..},limit=1] if block ~ ~-1 ~ fire run tag @s add rredstonesoup
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rredstonesoup] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rredstonesoup] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rredstonesoup] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rredstonesoup] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Redstone Soup\",\"color\":\"green\"}"},CustomModelData:1,HideFlags:63,rds:1b,CustomPotionEffects:[{Id:1b,Amplifier:3b,Duration:5000},{Id:3b,Amplifier:3b,Duration:5000},{Id:5b,Amplifier:3b,Duration:5000},{Id:8b,Amplifier:3b,Duration:5000},{Id:10b,Amplifier:1b,Duration:5000},{Id:22b,Amplifier:2b,Duration:5000}],CustomPotionColor:16711680}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rredstonesoup] at @s run tag @s remove rredstonesoup

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{rds:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{tag:{dbpotion:1b}}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:oak_sapling",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=200..},limit=1] if block ~ ~-1 ~ fire run tag @s add rmysticointment
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rmysticointment] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rmysticointment] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rmysticointment] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmysticointment] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Mystic Ointment\",\"color\":\"green\"}"},CustomModelData:2,HideFlags:63,msoint:1b,CustomPotionEffects:[{Id:9b,Amplifier:3b,Duration:800}],CustomPotionColor:1944924}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmysticointment] at @s run tag @s remove rmysticointment

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ghast_tear",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rdvpotion
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rdvpotion] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rdvpotion] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rdvpotion] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdvpotion] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:glass_bottle",Count:2b,tag:{CustomModelData:15,dvpotion:1b,display:{Name:"{\"text\":\"Diamond Vapor\",\"color\":\"green\"}"}}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rdvpotion] at @s run tag @s remove rdvpotion

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:bone",Count:1b}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:1}}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rtgk
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rtgk] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rtgk] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rtgk] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rtgk] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:glass_bottle",Count:1b,tag:{CustomModelData:17,taglock:1b,taglockdata:0,display:{Name:"{\"text\":\"Taglock kit\",\"color\":\"green\"}"}}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rtgk] at @s run tag @s remove rtgk

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{rds:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:fermented_spider_eye",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:obsidian",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:brown_mushroom",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add riotbe
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=riotbe] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=riotbe] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=riotbe] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riotbe] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Blind Eye Infusion\",\"color\":\"green\"}"},HideFlags:63,CustomModelData:3,blindei:1b,CustomPotionEffects:[{Id:4b,Amplifier:2b,Duration:200},{Id:15b,Amplifier:1b,Duration:200},{Id:17b,Amplifier:3b,Duration:200},{Id:27b,Amplifier:2b,Duration:200}],CustomPotionColor:7368816}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riotbe] at @s run tag @s remove riotbe

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{rds:1b}}},distance=..1] if entity @e[type=item,nbt={Item:{tag:{efpotion:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:golden_apple",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add riotp
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=riotp] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=riotp] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=riotp] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riotp] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Infusion of the Planes\",\"color\":\"green\"}"},HideFlags:63,CustomModelData:4,planesi:1b,CustomPotionEffects:[{Id:14b,Amplifier:1b,Duration:99999}],CustomPotionColor:7368816}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riotp] at @s run tag @s remove riotp

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{rds:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:sunflower",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:jack_o_lantern",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:clock",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add riof
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=riof] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=riof] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=riof] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riof] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Infusion of Fortune\",\"color\":\"green\"}"},HideFlags:63,CustomModelData:5,fatei:1b,CustomPotionEffects:[{Id:26b,Amplifier:1b,Duration:1000}],CustomPotionColor:7368816}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riof] at @s run tag @s remove riof

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{rds:1b}}},distance=..1] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:vine",Count:1b}}] if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:lily_pad",Count:1b}}] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add riol
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=riol] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=riol] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=riol] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riol] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:"{\"text\":\"Soul of the World\",\"color\":\"green\"}"},HideFlags:63,CustomModelData:6,sotworld:1b,CustomPotionEffects:[{Id:11b,Amplifier:3b,Duration:5000}],CustomPotionColor:7368816}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=riol] at @s run tag @s remove riol

execute as @e[type=armor_stand,tag=cauldron,tag=!timer] at @s if entity @e[type=item,nbt={Item:{tag:{crownm:1b}}},distance=..1] if entity @e[type=item,nbt={Item:{tag:{naturecore:1b}}},distance=..1] if block ~ ~ ~ cauldron[level=3] if entity @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] if block ~ ~-1 ~ fire run tag @s add rmcf
execute as @e[type=armor_stand,tag=cauldron,tag=!timer,tag=rmcf] at @s run tag @s add timer
execute as @e[type=armor_stand,tag=cauldron,tag=rmcf] at @s run tag @e[tag=magicaltar,distance=..20,scores={Power=15..},limit=1] add rea
execute as @e[type=armor_stand,tag=cauldron,tag=rmcf] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmcf] at @s run summon item ~ ~0.5 ~ {NoGravity:1b,Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Moss Crown\",\"color\":\"green\"}",Lore:["{\"text\":\"Complete\",\"color\":\"dark_purple\"}"]},HideFlags:63,Unbreakable:1b,CustomModelData:8,crownm:1b,incom:0b}}}
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done,tag=rmcf] at @s run tag @s remove rmcf



execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run function
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run playsound minecraft:block.note_block.chime master @a[distance=..20] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute as @e[type=armor_stand,tag=cauldron,tag=timer,tag=done] at @s run setblock ~ ~ ~ cauldron[level=0]
execute as @e[type=armor_stand,tag=cauldron,tag=done] at @s run tag @s remove done
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run tag @s remove timer
execute as @e[type=armor_stand,tag=cauldron,scores={Timer=240..}] at @s run scoreboard players reset @s Timer