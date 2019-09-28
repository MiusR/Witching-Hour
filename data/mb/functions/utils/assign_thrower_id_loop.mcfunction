scoreboard players operation @p[scores={throwerid=-1}] throwerid = current throwerid
scoreboard players add current throwerid 1
execute if entity @p[scores={throwerid=-1}] run function mb:utils/assign_thrower_id_loop
