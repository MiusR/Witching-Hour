execute as @s[tag=spell,tag=done,tag=summon] at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..20] ~ ~ ~ 100 1
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=summon,tag=!defense] at @s run summon minecraft:endermite
execute as @s[tag=!invert,tag=spell,tag=done,tag=offense,tag=summon,tag=!defense] at @s run summon minecraft:iron_golem ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"456789",Health:10f,PlayerCreated:1b,Tags:["invoked"],CustomName:'{"text":"Summoned Golem","color":"dark_purple"}',Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackDamage,Base:13}]}
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=summon,tag=defense] at @s run summon minecraft:snow_golem ~ ~ ~ {DeathLootTable:"456789",CustomName:'{"text":"Summoned Golem","color":"dark_purple"}',CustomNameVisible:1b,Tags:["invoked"]} 
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=summon,tag=defense] at @s run summon minecraft:snow_golem ~ ~ ~ {DeathLootTable:"456789",CustomName:'{"text":"Summoned Golem","color":"dark_purple"}',CustomNameVisible:1b,Tags:["invoked"]} 
execute as @s[tag=!invert,tag=spell,tag=done,tag=!offense,tag=summon,tag=defense] at @s run summon minecraft:snow_golem ~ ~ ~ {DeathLootTable:"456789",CustomName:'{"text":"Summoned Golem","color":"dark_purple"}',CustomNameVisible:1b,Tags:["invoked"]}
execute as @s[tag=!invert,tag=spell,tag=done,tag=offense,tag=summon,tag=defense] at @s run summon minecraft:vindicator ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"357626wery",Johnny:1b,Tags:["invoked"],CustomName:'{"text":"Jhonny"}',HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.085F]}
execute as @s[tag=invert,tag=spell,tag=done,tag=summon] at @s run summon minecraft:rabbit ~ ~ ~ {RabbitType:99}

execute as @e[tag=invoked,distance=..1] run scoreboard players set @s Life 300


execute as @s[tag=spell,tag=done,tag=summon] at @s run tag @s add spellend