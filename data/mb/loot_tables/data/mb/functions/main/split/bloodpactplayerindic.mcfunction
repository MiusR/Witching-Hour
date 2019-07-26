execute as @p[nbt={SelectedItem:{tag:{id:"blood_pact"}}},nbt=!{SelectedItem:{tag:{taglockdata:0}}}] unless entity @a[distance=0.5..,tag=checktaglocktemp1] run tag @s add checktaglocktemp1
execute as @p[tag=checktaglocktemp1] store result score @s Taglocktemp run data get entity @s SelectedItem.tag.taglockdata 1
execute as @a if score @a[limit=1,tag=checktaglocktemp1] Taglocktemp = @s Taglock run tag @s add foundtaglock1
execute as @p[tag=checktaglocktemp1,tag=!told1,scores={Sneak=1}] if entity @a[tag=foundtaglock1] run tellraw @s {"selector":"@a[tag=foundtaglock1]","color":"light_purple"}
execute as @p[tag=checktaglocktemp1,tag=!told1,scores={Sneak=1}] if entity @a[tag=!foundtaglock1] run tellraw @s {"text":"The player isn't online at the moment!","color":"red"}
tag @a[tag=checktaglocktemp1] remove checktaglocktemp1
tag @a[tag=foundtaglock1] remove foundtaglock1
execute as @a[nbt={SelectedItem:{tag:{id:"blood_pact"}}},scores={Sneak=1}] run tag @s add told1
execute as @a[nbt=!{SelectedItem:{tag:{id:"blood_pact"}}}] run tag @s remove told1