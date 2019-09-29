execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{text:origins}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"I have heard rumours about witches who can manipulate mysterious energies. They say that witches surround themselves with different spirits, does it have something to do with their powers? \nMaybe if I can get on the spirits good side, what if I offer them green riches for a favour? I think an altar is required to make contact.","color":"reset"}]
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:26b,tag:{text:info}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"I will be your guide throw this magical journey and with that said let me explain the weird scribbles written inside me with 2 simple rules :\n\n1.All text that appears in chat may be useful so read it!\n\n2.The way you read recipes goes like this from left to right : Result - Ingredients - Modifier(Optional it will represent a requirement like a circle size for a ritual or the time of day) - The means you use to make the result.\n\nAnd do not worry I will remember the last page you were on most of the times!","color":"reset"}]
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{page:2b}}]} run scoreboard players set @s Page 1
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:4b,tag:{page:3b}}]} run scoreboard players set @s Page 2
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:6b,tag:{page:4b}}]} run scoreboard players set @s Page 3
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:8b,tag:{page:5b}}]} run scoreboard players set @s Page 4
execute as @e[tag=book_ui,scores={Page=0}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:10b,tag:{page:6b}}]} run scoreboard players set @s Page 5
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless score @s Page = @s LastPage run function mb:main/bookpage
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s store result score @s LastPage run scoreboard players get @s Page
execute as @e[tag=book_ui,scores={Page=4}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{page:7b}}]} run scoreboard players set @s Page 6
execute as @e[tag=book_ui,scores={Page=4}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{page:8b}}]} run scoreboard players set @s Page 7
execute as @e[tag=book_ui,scores={Page=11}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:18b,tag:{page:7b}}]} run scoreboard players set @s Page 7
execute as @e[tag=book_ui,scores={Page=4}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:4b,tag:{page:9b}}]} run scoreboard players set @s Page 8
execute as @e[tag=book_ui,scores={Page=4}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:6b,tag:{page:10b}}]} run scoreboard players set @s Page 9
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless score @s Page = @s LastPage run function mb:main/bookpage
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s store result score @s LastPage run scoreboard players get @s Page
execute as @e[tag=book_ui,scores={Page=7}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:26b,tag:{page:11b}}]} run scoreboard players set @s Page 11
execute as @e[tag=book_ui,scores={Page=5}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:11b,tag:{page:100b}}]} run scoreboard players set @s Page 100
execute as @e[tag=book_ui,scores={Page=5}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:15b,tag:{page:500b}}]} run scoreboard players set @s Page 500
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless score @s Page = @s LastPage run function mb:main/bookpage
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s store result score @s LastPage run scoreboard players get @s Page

execute as @e[tag=book_ui,scores={Page=102..114}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:18b,tag:{page:previous}}]} run scoreboard players remove @s Page 1
execute as @e[tag=book_ui,scores={Page=101..113}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:26b,tag:{page:next}}]} run scoreboard players add @s Page 1
execute as @e[tag=book_ui,scores={Page=201..213}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:18b,tag:{page:previous}}]} run scoreboard players remove @s Page 1
execute as @e[tag=book_ui,scores={Page=200..212}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:26b,tag:{page:next}}]} run scoreboard players add @s Page 1
execute as @e[tag=book_ui,scores={Page=301..306}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:18b,tag:{page:previous}}]} run scoreboard players remove @s Page 1
execute as @e[tag=book_ui,scores={Page=300..305}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:26b,tag:{page:next}}]} run scoreboard players add @s Page 1
execute as @e[tag=book_ui,scores={Page=501..504}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:18b,tag:{page:previous}}]} run scoreboard players remove @s Page 1
execute as @e[tag=book_ui,scores={Page=500..503}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:26b,tag:{page:next}}]} run scoreboard players add @s Page 1
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless score @s Page = @s LastPage run function mb:main/bookpage
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s store result score @s LastPage run scoreboard players get @s Page


execute as @e[tag=book_ui,scores={Page=100}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{page:101b}}]} run scoreboard players set @s Page 101
execute as @e[tag=book_ui,scores={Page=100}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:4b,tag:{page:200b}}]} run scoreboard players set @s Page 200
execute as @e[tag=book_ui,scores={Page=100}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:6b,tag:{page:300b}}]} run scoreboard players set @s Page 300


###Place text here
execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{text:evil_pumpkin}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"These mischievous creatures! They hide in plain sight and surprise you  when you least expect it! But they drop Horror Dust, which comes in hand in my experiments. It would be easy if I could just summon them in… what if.. I may have a cauldron ritual just for this situation!","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{text:toads}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Toads are harmless critters, whose toe are quite potent components in potion brewing. There have been weird rumours about them appearing in witches cauldrons, maybe I can use this to summon them at will...","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:4b,tag:{text:demon}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Demons are foul creatures from another plane, and luckily for everyone they aren’t native in our plane. ...but I have found a ritual that weakens enough the barrier between our world and theirs to let the demons pass through! Not that I want to cause chaos, but I have heard that a Demon's Heart is a powerful component in different kinds of magic\nI only need to draw a medium sized circle with Infernal chalk and throw into the middle some Liquid Luck, Horror Dust, Blaze Powder, an Apple and a *willing* sacrifical villager to start to start the ritual!\nThis is still only a theoretical ritual, I should really wait till I’m sure I can handle it.","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:6b,tag:{text:spectral_familiar}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"These docile creatures are harmless in every way, sadly I need their Spectral Dust to continue my pursuit in Necromancy.","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:8b,tag:{text:banshee}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Restless spirits that are a headache to deal with, or at least with their constant screams of agony. But I haven’t found any other source of Condensed Fear…","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=3}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:12b,tag:{text:undead_hunter}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Some people are uncomfortably close finding my secret, I don’t think the villagers would like me if they knew that I’m a witch… Luckily for me, and unluckily for my enemies I found a necromantic ritual to bring forth deadly hunters to hunt anyone who I want.","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=2}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:0b,tag:{text:pillars}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Ancient civilizations that were here at the beginning left some memories which fade out of existance and back in at random, villagers spread the rumor of pillar like structures that hide a secret they have some strange symbols on them, I can decipher very little of their language but they seem to point to an unknown world, maybe we can get there somehow… The villagers I asked about these mysterious structures just told me some old folk tales about ancient civilizations that disappeared mysteriously without a trace. Maybe I should find these ruins and try to figure out where they disappeared, maybe I’ll find something else interesting there as well.","color":"reset"}]

execute as @e[tag=book_ui,scores={Page=2}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:2b,tag:{text:fae_tree}}]} run tellraw @p [{"text":"<Babbling Book> ","color":"gold","italic":false},{"text":"Fairies like to make their hauses in giant tree stumps... why are they all the same don't ask me.\n\nAfter some reaserch I found out that the stumpt isn't ancient the fae picks a stumpt and changes its size with some magic.","color":"reset"}]


execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s if block ~ ~0.3 ~ chest{Items:[{Slot:22b,tag:{page:0b}}]} run function mb:main/bookpage
execute as @e[tag=book_ui,scores={Page=1..}] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:22b,tag:{page:0b}}]} run scoreboard players set @s Page 0
execute as @e[tag=book_ui,tag=done2,tag=done1,tag=done3,tag=done2] at @s unless block ~ ~0.3 ~ chest{Items:[{Slot:22b,tag:{page:0b}}]} run function mb:main/bookpage