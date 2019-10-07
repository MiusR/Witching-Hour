execute as @s at @s run tp @e[limit=1,tag=slot1d] ^ ^ ^1.5 facing entity @a[limit=1,sort=nearest,distance=..2]
execute as @s at @s run tp @e[limit=1,tag=slot2d] ^ ^ ^-1.5 facing entity @a[limit=1,sort=nearest,distance=..2]
execute as @s at @s run tp @e[limit=1,tag=slot3d] ^1.5 ^ ^ facing entity @a[limit=1,sort=nearest,distance=..2]
execute as @s at @s run tp @e[limit=1,tag=slot4d] ^-1.5 ^ ^ facing entity @a[limit=1,sort=nearest,distance=..2]
execute as @e[tag=slot1d] at @s run tp @e[tag=slot1p] ~ ~1 ~
execute as @e[tag=slot2d] at @s run tp @e[tag=slot2p] ~ ~1 ~
execute as @e[tag=slot3d] at @s run tp @e[tag=slot3p] ~ ~1 ~
execute as @e[tag=slot4d] at @s run tp @e[tag=slot4p] ~ ~1 ~
tp @s ~ ~ ~ ~2 ~
execute as @s at @s unless entity @a[distance=..2] run tag @s add end
execute as @s at @s unless entity @a[distance=..2,nbt={SelectedItem:{tag:{id:"staff"}}}] run tag @s add end

execute as @e[tag=slot1d] at @s unless entity @e[tag=slot1p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add slot1
execute as @e[tag=slot2d] at @s unless entity @e[tag=slot2p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add slot2
execute as @e[tag=slot3d] at @s unless entity @e[tag=slot3p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add slot3
execute as @e[tag=slot4d] at @s unless entity @e[tag=slot4p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add slot4
execute as @e[tag=slot5d] at @s unless entity @e[tag=slot5p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add slot5
execute as @e[tag=slot6d] at @s unless entity @e[tag=slot6p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add slot6

execute as @e[tag=slot1d] at @s unless entity @e[tag=slot1p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add end
execute as @e[tag=slot2d] at @s unless entity @e[tag=slot2p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add end
execute as @e[tag=slot3d] at @s unless entity @e[tag=slot3p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add end
execute as @e[tag=slot4d] at @s unless entity @e[tag=slot4p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add end
execute as @e[tag=slot5d] at @s unless entity @e[tag=slot5p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add end
execute as @e[tag=slot6d] at @s unless entity @e[tag=slot6p,distance=..1] run tag @e[tag=slotpickmaster,limit=1,distance=..2,sort=nearest] add end

execute as @s[tag=end] at @s run data merge entity @a[limit=1,distance=..1,sort=nearest] {SelectedItem:{tag:{spell:[]}}}
execute as @s[tag=end] at @s run data merge entity @a[limit=1,distance=..1,sort=nearest] {SelectedItem:{tag:{modifiers:[]}}}

execute at @s[tag=slot1] as @a[distance=..1] run data modify entity @s SelectedItem.tag.spell set from entity @s SelectedItem.tag.spell1
execute at @s[tag=slot1] as @a[distance=..1] run data modify entity @s SelectedItem.tag.modifiers set from entity @s SelectedItem.tag.modifiers1
execute at @s[tag=slot2] as @a[distance=..1] run data modify entity @s SelectedItem.tag.spell set from entity @s SelectedItem.tag.spell2
execute at @s[tag=slot2] as @a[distance=..1] run data modify entity @s SelectedItem.tag.modifiers set from entity @s SelectedItem.tag.modifiers2
execute at @s[tag=slot3] as @a[distance=..1] run data modify entity @s SelectedItem.tag.spell set from entity @s SelectedItem.tag.spell3
execute at @s[tag=slot3] as @a[distance=..1] run data modify entity @s SelectedItem.tag.modifiers set from entity @s SelectedItem.tag.modifiers3
execute at @s[tag=slot4] as @a[distance=..1] run data modify entity @s SelectedItem.tag.spell set from entity @s SelectedItem.tag.spell4
execute at @s[tag=slot4] as @a[distance=..1] run data modify entity @s SelectedItem.tag.modifiers set from entity @s SelectedItem.tag.modifiers4
execute at @s[tag=slot5] as @a[distance=..1] run data modify entity @s SelectedItem.tag.spell set from entity @s SelectedItem.tag.spell5
execute at @s[tag=slot5] as @a[distance=..1] run data modify entity @s SelectedItem.tag.modifiers set from entity @s SelectedItem.tag.modifiers5
execute at @s[tag=slot6] as @a[distance=..1] run data modify entity @s SelectedItem.tag.spell set from entity @s SelectedItem.tag.spell6
execute at @s[tag=slot6] as @a[distance=..1] run data modify entity @s SelectedItem.tag.modifiers set from entity @s SelectedItem.tag.modifiers6

execute as @s[tag=end] at @s run playsound minecraft:block.enchantment_table.use master @a[distance=..10] ~ ~ ~ 100 0
execute as @s[tag=end] at @s run xp add @a[distance=..3,limit=1,sort=nearest] -1 points
execute as @s[tag=end] at @s run kill @e[tag=spellselect,distance=..3]