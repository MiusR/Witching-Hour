execute as @a[tag=fatei,scores={Rclick=1..,PlayerInfP=1000},nbt={SelectedItem:{tag:{id:"fates_coin"}}}] at @s run function mb:main/split/coingetitems
execute as @a[tag=fatei,scores={Rclick=1..,PlayerInfP=1000},nbt={SelectedItem:{tag:{id:"fates_coin"}}}] at @s run title @s title {"text":"\uEaa4"}
execute as @a[tag=fatei,scores={Rclick=1..,PlayerInfP=1000},nbt={SelectedItem:{tag:{id:"fates_coin"}}}] at @s run scoreboard players reset @s PlayerInfP
execute as @a[tag=fatei,scores={Rclick=1..},nbt={SelectedItem:{tag:{id:"fates_coin"}}}] run scoreboard players set @s Rclick 0