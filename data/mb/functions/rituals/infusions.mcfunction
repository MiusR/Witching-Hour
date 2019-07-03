execute as @a[tag=infused] unless score @s PlayerInfP = @s PlayerInfPT run tag @s add displayIP
execute as @a[tag=displayIP,scores={PlayerInfP=1000}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=900}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=800}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=700}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=600}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=500}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=400}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=300}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=200}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=100}] run tag @s add clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=0}] run tag @s add clearchat
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
execute as @a[tag=clearchat] run tellraw @s {"text":""}
tag @a[] remove clearchat
execute as @a[tag=displayIP,scores={PlayerInfP=1000}] run tellraw @s {"text":"\uEff1"}
execute as @a[tag=displayIP,scores={PlayerInfP=900}] run tellraw @s {"text":"\uEff2"}
execute as @a[tag=displayIP,scores={PlayerInfP=800}] run tellraw @s {"text":"\uEff3"}
execute as @a[tag=displayIP,scores={PlayerInfP=700}] run tellraw @s {"text":"\uEff4"}
execute as @a[tag=displayIP,scores={PlayerInfP=600}] run tellraw @s {"text":"\uEff5"}
execute as @a[tag=displayIP,scores={PlayerInfP=500}] run tellraw @s {"text":"\uEff6"}
execute as @a[tag=displayIP,scores={PlayerInfP=400}] run tellraw @s {"text":"\uEff7"}
execute as @a[tag=displayIP,scores={PlayerInfP=300}] run tellraw @s {"text":"\uEff8"}
execute as @a[tag=displayIP,scores={PlayerInfP=200}] run tellraw @s {"text":"\uEff9"}
execute as @a[tag=displayIP,scores={PlayerInfP=100}] run tellraw @s {"text":"\uEaa1"}
execute as @a[tag=displayIP,scores={PlayerInfP=0}] run tellraw @s {"text":"\uEaa2"}

execute as @a[tag=forceDIP,scores={PlayerInfP=901..999}] run tellraw @s {"text":"\uEff2"}
execute as @a[tag=forceDIP,scores={PlayerInfP=801..899}] run tellraw @s {"text":"\uEff3"}
execute as @a[tag=forceDIP,scores={PlayerInfP=701..799}] run tellraw @s {"text":"\uEff4"}
execute as @a[tag=forceDIP,scores={PlayerInfP=601..699}] run tellraw @s {"text":"\uEff5"}
execute as @a[tag=forceDIP,scores={PlayerInfP=501..599}] run tellraw @s {"text":"\uEff6"}
execute as @a[tag=forceDIP,scores={PlayerInfP=401..499}] run tellraw @s {"text":"\uEff7"}
execute as @a[tag=forceDIP,scores={PlayerInfP=301..399}] run tellraw @s {"text":"\uEff8"}
execute as @a[tag=forceDIP,scores={PlayerInfP=201..299}] run tellraw @s {"text":"\uEff9"}
execute as @a[tag=forceDIP,scores={PlayerInfP=101..199}] run tellraw @s {"text":"\uEaa1"}
execute as @a[tag=forceDIP,scores={PlayerInfP=..99}] run tellraw @s {"text":"\uEaa2"}

execute as @a[tag=displayIP] run scoreboard players operation @s PlayerInfPT = @s PlayerInfP
execute as @a[tag=displayIP] run tag @s remove displayIP
tag @a remove forceDIP
scoreboard players add @a[tag=infused,scores={PlayerInfP=..999}] PlayerInfP 1