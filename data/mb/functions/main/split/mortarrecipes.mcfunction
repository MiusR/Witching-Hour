execute as @e[tag=mortar,tag=start,scores={Timer=0},tag=projectile] run loot spawn ~ ~ ~ loot mb:items/mysteriousdust
execute as @e[tag=mortar,tag=start,scores={Timer=0},tag=self] run loot spawn ~ ~ ~ loot mb:items/mysteriousdust
execute as @e[tag=mortar,tag=start,scores={Timer=0},tag=touch] run loot spawn ~ ~ ~ loot mb:items/mysteriousdust
data modify entity @e[limit=1,type=item,distance=..1,nbt={Item:{tag:{id:"mysterious_dust"}}}] Tags append from entity @e[limit=1,tag=mortar,type=armor_stand] Tags[]

data merge entity @e[limit=1,tag=mortar,type=item,tag=fire] {Item:{tag:{element:"fire"}}}
data merge entity @e[limit=1,tag=mortar,type=item,tag=frost] {Item:{tag:{element:"frost"}}}
data merge entity @e[limit=1,tag=mortar,type=item,tag=air] {Item:{tag:{element:"air"}}}
data merge entity @e[limit=1,tag=mortar,type=item,tag=warp] {Item:{tag:{element:"warp"}}}
data merge entity @e[limit=1,tag=mortar,type=item,tag=summon] {Item:{tag:{element:"summon"}}}

data modify entity @e[limit=1,tag=mortar,type=item,tag=aoe] Item.tag.modifiers append value "aoe"
data modify entity @e[limit=1,tag=mortar,type=item,tag=invert] Item.tag.modifiers append value "invert"
data modify entity @e[limit=1,tag=mortar,type=item,tag=gravity] Item.tag.modifiers append value "gravity"
data modify entity @e[limit=1,tag=mortar,type=item,tag=offense] Item.tag.modifiers append value "offense"
data modify entity @e[limit=1,tag=mortar,type=item,tag=defense] Item.tag.modifiers append value "defense"

data merge entity @e[limit=1,tag=mortar,type=item] {Tags:[]}