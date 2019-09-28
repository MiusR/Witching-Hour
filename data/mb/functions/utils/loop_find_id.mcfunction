scoreboard players add @s throwerid 1
data modify entity @s Item.tag.UUIDM set from entity @s Thrower.M
data modify entity @s Item.tag.UUIDL set from entity @s Thrower.L
execute at @a if score @p[limit=1,sort=nearest,distance=..1] throwerid = @s throwerid store success score @s success1 run data modify entity @s Item.tag.UUIDL set from entity @p[limit=1,sort=nearest,distance=..1] UUIDLeast
execute at @a if score @p[limit=1,sort=nearest,distance=..1] throwerid = @s throwerid store success score @s success2 run data modify entity @s Item.tag.UUIDM set from entity @p[limit=1,sort=nearest,distance=..1] UUIDMost
execute if score @s success1 matches 1.. if score @s success2 matches 1.. if score @s throwerid < current throwerid run function mb:utils/loop_find_id