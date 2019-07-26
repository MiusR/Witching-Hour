execute as @e[type=minecraft:potion,nbt={Potion:{tag:{id:"brew_of_mystery"}}}] at @s run tag @s add bomystery
execute as @e[tag=bomystery,tag=!done] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["bomysteryf"],DisabledSlots:4144959}
execute as @e[tag=bomystery,tag=!done] at @s run tag @s add done
execute as @e[tag=bomysteryf] at @s run tp @s @e[tag=bomystery,limit=1,sort=nearest,distance=..1]

execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=..3}] run effect give @s jump_boost 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=..3}] run effect give @s invisibility 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=..3}] run effect give @s night_vision 20 3

execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=4..6}] run effect give @s absorption 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=4..6}] run effect give @s strength 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=4..6}] run effect give @s resistance 20 3

execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=7..9}] run effect give @s luck 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=7..9}] run effect give @s speed 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=7..9}] run effect give @s haste 20 3

execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=10..12}] run effect give @s fire_resistance 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=10..12}] run effect give @s regeneration 20 3
execute at @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] as @a[distance=..5,scores={Random12=10..12}] run effect give @s water_breathing 20 3

execute as @e[tag=bomysteryf] at @s unless entity @e[tag=bomystery,distance=..1] run kill @s