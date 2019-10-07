execute as @e[nbt={Item:{tag:{id:"staff"}}}] at @s if entity @e[nbt={Item:{tag:{id:"mysterious_dust"}}},distance=..1] run function mb:main/split/staffinfusion
execute as @a[scores={Rclick=1..,PlayerInfP=100..,Sneak=0},nbt={SelectedItem:{tag:{id:"staff"}}},nbt=!{SelectedItem:{tag:{modifiers:["invert"],spell:["warp"]}}},tag=!spellcooldown] at @s run function mb:main/split/staffspellinit
execute as @a[scores={Rclick=1..,PlayerInfP=1000..,Sneak=0},nbt={SelectedItem:{tag:{modifiers:["invert"],spell:["warp"]}}},tag=!spellcooldown] at @s run function mb:main/split/staffspellinit
execute as @a[scores={Rclick=1..,Sneak=1..},nbt={SelectedItem:{tag:{id:"staff"}}}] at @s run function mb:main/split/staffslots
execute as @e[tag=slotpickmaster] at @s run function mb:main/split/staffspellselection
scoreboard players set @a[scores={Rclick=1..},nbt={SelectedItem:{tag:{id:"staff"}}}] Rclick 0
execute as @e[tag=spell] at @s run function mb:main/split/staffspells
execute as @e[tag=invoked] run scoreboard players remove @s Life 1
execute as @e[tag=invoked,scores={Life=..0}] run tp @s ~ -255 ~
execute as @e[tag=invoked,scores={Life=..0}] run kill @s