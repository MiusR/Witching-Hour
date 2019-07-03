execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_patience"}}}] at @s run tag @s add bopatience
execute as @e[tag=bopatience,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bopatiencef"],DisabledSlots:4144959}
execute as @e[tag=bopatience,tag=!done] at @s run tag @s add done
execute as @e[tag=bopatiencef] at @s run tp @s @e[tag=bopatience,limit=1,sort=nearest,distance=..1]
execute as @e[tag=bopatiencef] at @s unless entity @e[tag=bopatience,distance=..1] run summon giant ~2 ~-5 ~-5 {NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"5678",NoAI:1b,Tags:["inv","clockb"],HandItems:[{id:"minecraft:clock",Count:1b},{}],ActiveEffects:[{Id:14b,Amplifier:255b,Duration:200,ShowParticles:0b}]}
execute as @e[tag=bopatiencef] at @s unless entity @e[tag=bopatience,distance=..1] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 100 2
execute as @e[tag=bopatiencef] at @s unless entity @e[tag=bopatience,distance=..1] run tellraw @a {"text":"<Temporus> A rupture in time has just occurred beware the merging!","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":"Time goes much faster for a duration!"}}
execute as @e[tag=bopatiencef] at @s unless entity @e[tag=bopatience,distance=..1] run kill @s