function mb:utils/assign_thrower_id
scoreboard players set @s throwerid -1
execute if data entity @s Thrower run function mb:utils/loop_find_id