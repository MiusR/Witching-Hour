execute as @e[tag=magicaltar,scores={mb_PowerCost=1..}] run scoreboard players operation @s Power -= @s mb_PowerCost
execute as @e[tag=magicaltar,scores={mb_PowerCost=1..}] run scoreboard players set @s mb_PowerCost 0