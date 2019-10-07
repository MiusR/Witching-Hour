execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["spell"],DisabledSlots:4144959}
execute as @a[] at @s run scoreboard players operation @e[tag=spell,limit=1,sort=nearest,distance=..1,tag=!done] Taglocktemp = @s Taglock 
execute as @a[nbt={SelectedItem:{tag:{spell:["fire"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add fire
execute as @a[nbt={SelectedItem:{tag:{spell:["frost"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add frost
execute as @a[nbt={SelectedItem:{tag:{spell:["air"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add air
execute as @a[nbt={SelectedItem:{tag:{spell:["warp"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add warp
execute as @a[nbt={SelectedItem:{tag:{spell:["summon"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add summon

execute as @a[nbt={SelectedItem:{tag:{modifiers:["offense"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add offense
execute as @a[nbt={SelectedItem:{tag:{modifiers:["defense"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add defense
execute as @a[nbt={SelectedItem:{tag:{modifiers:["gravity"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add gravity
execute as @a[nbt={SelectedItem:{tag:{modifiers:["invert"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add invert
execute as @a[nbt={SelectedItem:{tag:{modifiers:["aoe"]}}}] at @s run tag @e[tag=spell,tag=!done,limit=1,sort=nearest,distance=..1] add aoe
execute as @a[nbt={SelectedItem:{tag:{spell:["air"]}}}] at @s run scoreboard players remove @s PlayerInfP 100
execute as @a[nbt={SelectedItem:{tag:{spell:["fire"]}}}] at @s run scoreboard players remove @s PlayerInfP 80
execute as @a[nbt={SelectedItem:{tag:{spell:["frost"]}}}] at @s run scoreboard players remove @s PlayerInfP 60
execute as @a[nbt={SelectedItem:{tag:{spell:["summon"]}}}] at @s run scoreboard players remove @s PlayerInfP 100
execute as @a[nbt=!{SelectedItem:{tag:{modifiers:["defense"]}}},nbt=!{SelectedItem:{tag:{modifiers:["offense"]}}}] at @s run scoreboard players remove @s PlayerInfP 10
tag @s add forceDIP