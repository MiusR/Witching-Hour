data merge entity @s {Item:{tag:{spell:[]}}}
data merge entity @s {Item:{tag:{modifiers:[]}}}
data modify entity @s Item.tag.spell append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.element
data modify entity @s Item.tag.modifiers append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.modifiers[]

execute as @s store result score @s SpellSlot run data get entity @s Item.tag.spellslot
data merge entity @s[scores={SpellSlot=4..}] {Item:{tag:{spellslot:0b}}}
scoreboard players set @s[scores={SpellSlot=4..}] SpellSlot 0
scoreboard players add @s SpellSlot 1
execute as @s store result entity @s Item.tag.spellslot int 1 run scoreboard players get @s SpellSlot

data merge entity @s[scores={SpellSlot=1}] {Item:{tag:{spell1:[]}}}
data merge entity @s[scores={SpellSlot=1}] {Item:{tag:{modifiers1:[]}}}
data merge entity @s[scores={SpellSlot=1}] {Item:{tag:{name1:[]}}}
data modify entity @s[scores={SpellSlot=1}] Item.tag.name1 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.display.Name
data modify entity @s[scores={SpellSlot=1}] Item.tag.spell1 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.element
data modify entity @s[scores={SpellSlot=1}] Item.tag.modifiers1 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.modifiers[]

data merge entity @s[scores={SpellSlot=2}] {Item:{tag:{spell2:[]}}}
data merge entity @s[scores={SpellSlot=2}] {Item:{tag:{modifiers2:[]}}}
data merge entity @s[scores={SpellSlot=2}] {Item:{tag:{name2:[]}}}
data modify entity @s[scores={SpellSlot=2}] Item.tag.name2 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.display.Name
data modify entity @s[scores={SpellSlot=2}] Item.tag.spell2 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.element
data modify entity @s[scores={SpellSlot=2}] Item.tag.modifiers2 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.modifiers[]

data merge entity @s[scores={SpellSlot=3}] {Item:{tag:{spell3:[]}}}
data merge entity @s[scores={SpellSlot=3}] {Item:{tag:{modifiers3:[]}}}
data merge entity @s[scores={SpellSlot=3}] {Item:{tag:{name3:[]}}}
data modify entity @s[scores={SpellSlot=3}] Item.tag.name3 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.display.Name
data modify entity @s[scores={SpellSlot=3}] Item.tag.spell3 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.element
data modify entity @s[scores={SpellSlot=3}] Item.tag.modifiers3 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.modifiers[]

data merge entity @s[scores={SpellSlot=4}] {Item:{tag:{spell4:[]}}}
data merge entity @s[scores={SpellSlot=4}] {Item:{tag:{modifiers4:[]}}}
data merge entity @s[scores={SpellSlot=4}] {Item:{tag:{name4:[]}}}
data modify entity @s[scores={SpellSlot=4}] Item.tag.name4 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.display.Name
data modify entity @s[scores={SpellSlot=4}] Item.tag.spell4 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.element
data modify entity @s[scores={SpellSlot=4}] Item.tag.modifiers4 append from entity @e[distance=..1,limit=1,type=item,nbt={Item:{tag:{id:"mysterious_dust"}}}] Item.tag.modifiers[]


execute as @s at @s run data merge entity @s {Item:{tag:{CustomModelData:13}}}
execute as @s at @s run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.2 50
execute as @s at @s run kill @e[type=item,distance=..1,nbt={Item:{tag:{id:"mysterious_dust"}}}]