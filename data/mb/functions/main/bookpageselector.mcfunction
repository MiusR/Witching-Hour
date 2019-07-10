execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{text:origins}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Magic is the mystical energy that surrounds all but can't be seen by normal means.\nSpirits have the power to manipulate this energy, but their ways are mysterious and the only thing we know about them is that they enjoy nature and green things, how will i get their favor?....Maybe an altar is required.","color":"reset"}]
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{page:2b}}]} run scoreboard players set @s Page 1
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:4b,tag:{page:3b}}]} run scoreboard players set @s Page 2
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:6b,tag:{page:4b}}]} run scoreboard players set @s Page 3
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:8b,tag:{page:5b}}]} run scoreboard players set @s Page 4
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:10b,tag:{page:6b}}]} run scoreboard players set @s Page 5

execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless score @s Page = @s LastPage run function mb:main/bookpage
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s store result score @s LastPage run scoreboard players get @s Page

###Place text here
execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{text:evil_pumpkin}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"The evil pumpkin is a mischiefous creature that likes to hide and wait for its prey. It can be found in the wild or summoned using a cauldron.\n\nDrops : Horror Dust!","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{text:toads}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Toads like to hop around all they long, they may be found in the wild or summoned with a cauldron!\n\nDrops : Toe of Frog!","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=2}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{text:pillars}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Ancient civilizations that were here at the beginning left some memories of their legion, villagers spread the rumor of pillar like structures that hide a secret they have some strange symbols on them, I can decipher very little of their language but they seem to point to an unknown world, maybe we can get there somehow...","color":"reset"}]

execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s if block ~ ~0.3 ~ chest{Items:[{Slot:22b,tag:{page:0b}}]} run function mb:main/bookpage
execute as @e[tag=book_ui,scores={Page=1..}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:22b,tag:{page:0b}}]} run scoreboard players set @s Page 0
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:22b,tag:{page:0b}}]} run function mb:main/bookpage


#################page 11
