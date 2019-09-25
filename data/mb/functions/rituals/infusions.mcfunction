execute as @a[tag=infused] unless score @s PlayerInfP = @s PlayerInfPT run tag @s add displayIP

execute as @a[tag=displayIP,scores={PlayerInfP=1000}] run title @s actionbar {"text":"\uEff1"}
execute as @a[tag=displayIP,scores={PlayerInfP=900}] run title @s actionbar {"text":"\uEff2"}
execute as @a[tag=displayIP,scores={PlayerInfP=800}] run title @s actionbar {"text":"\uEff3"}
execute as @a[tag=displayIP,scores={PlayerInfP=700}] run title @s actionbar {"text":"\uEff4"}
execute as @a[tag=displayIP,scores={PlayerInfP=600}] run title @s actionbar {"text":"\uEff5"}
execute as @a[tag=displayIP,scores={PlayerInfP=500}] run title @s actionbar {"text":"\uEff6"}
execute as @a[tag=displayIP,scores={PlayerInfP=400}] run title @s actionbar {"text":"\uEff7"}
execute as @a[tag=displayIP,scores={PlayerInfP=300}] run title @s actionbar {"text":"\uEff8"}
execute as @a[tag=displayIP,scores={PlayerInfP=200}] run title @s actionbar {"text":"\uEff9"}
execute as @a[tag=displayIP,scores={PlayerInfP=100}] run title @s actionbar {"text":"\uEaa1"}
execute as @a[tag=displayIP,scores={PlayerInfP=0}] run title @s actionbar {"text":"\uEaa2"}

execute as @a[tag=forceDIP,scores={PlayerInfP=901..999}] run title @s actionbar {"text":"\uEff2"}
execute as @a[tag=forceDIP,scores={PlayerInfP=801..899}] run title @s actionbar {"text":"\uEff3"}
execute as @a[tag=forceDIP,scores={PlayerInfP=701..799}] run title @s actionbar {"text":"\uEff4"}
execute as @a[tag=forceDIP,scores={PlayerInfP=601..699}] run title @s actionbar {"text":"\uEff5"}
execute as @a[tag=forceDIP,scores={PlayerInfP=501..599}] run title @s actionbar {"text":"\uEff6"}
execute as @a[tag=forceDIP,scores={PlayerInfP=401..499}] run title @s actionbar {"text":"\uEff7"}
execute as @a[tag=forceDIP,scores={PlayerInfP=301..399}] run title @s actionbar {"text":"\uEff8"}
execute as @a[tag=forceDIP,scores={PlayerInfP=201..299}] run title @s actionbar {"text":"\uEff9"}
execute as @a[tag=forceDIP,scores={PlayerInfP=101..199}] run title @s actionbar {"text":"\uEaa1"}
execute as @a[tag=forceDIP,scores={PlayerInfP=..99}] run title @s actionbar {"text":"\uEaa2"}

execute as @a[tag=displayIP] run scoreboard players operation @s PlayerInfPT = @s PlayerInfP
execute as @a[tag=displayIP] run tag @s remove displayIP
tag @a remove forceDIP