execute as @p[nbt={SelectedItem:{tag:{id:"taglock_kit"}}},nbt=!{SelectedItem:{tag:{taglockdata:0}}}] unless entity @a[distance=0.5..,tag=checktaglocktemp] run tag @s add checktaglocktemp
execute as @p[tag=checktaglocktemp] store result score @s Taglocktemp run data get entity @s SelectedItem.tag.taglockdata 1
execute as @a if score @a[limit=1,tag=checktaglocktemp] Taglocktemp = @s Taglock run tag @s add foundtaglock
execute as @p[tag=checktaglocktemp,tag=!told,scores={Sneak=1}] if entity @a[tag=foundtaglock] run tellraw @s {"selector":"@a[tag=foundtaglock]","color":"light_purple"}
execute as @p[tag=checktaglocktemp,tag=!told,scores={Sneak=1}] if entity @a[tag=!foundtaglock] run tellraw @s {"text":"The player isn't online at the moment!","color":"red"}
tag @a[tag=checktaglocktemp] remove checktaglocktemp
tag @a[tag=foundtaglock] remove foundtaglock
execute as @a[nbt={SelectedItem:{tag:{id:"taglock_kit"}}},scores={Sneak=1}] run tag @s add told
execute as @a[nbt=!{SelectedItem:{tag:{id:"taglock_kit"}}}] run tag @s remove told