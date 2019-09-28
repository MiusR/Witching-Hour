scoreboard objectives add ST dummy
scoreboard objectives add LHBH dummy
scoreboard objectives add PTD dummy
scoreboard objectives add RDT dummy
scoreboard objectives add count dummy
scoreboard objectives add EMT dummy
scoreboard objectives add Random dummy
scoreboard objectives add Life dummy
scoreboard objectives add MaxPower dummy
scoreboard objectives add Power dummy
scoreboard objectives add Timer dummy
scoreboard objectives add PatienceP dummy
scoreboard players set 60 PatienceP 100
scoreboard objectives add EnderC dummy
scoreboard objectives add Rclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add chalkrunes dummy
scoreboard objectives add RRTimer dummy
scoreboard objectives add TimerInf dummy
scoreboard objectives add Random12 dummy
scoreboard objectives add chalkdurability dummy
scoreboard objectives add fortunetimer dummy
scoreboard objectives add Time dummy
scoreboard objectives add braziertimer dummy
scoreboard objectives add Taglock dummy
execute unless entity @a[tag=hastaglockn] run scoreboard players set tracker Taglock 1
scoreboard objectives add Taglocktemp dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add PlayerInfP dummy
scoreboard objectives add PlayerInfPT dummy
scoreboard objectives add StoredDamage dummy
scoreboard objectives add PlayerHealth health
execute as @a[] run scoreboard players operation @s StoredDamage = @s PlayerHealth
scoreboard players set double StoredDamage 2
tellraw @a [{"text":"Witching Hour Loaded!\n\n","color":"dark_green"},{"text":"Pack made by Ancient_Spirit(Black Hat / Playelectro), Command Master, S4l4kin, SirPumpkinstein, DavveCze, JordenEatsCereals.","color":"blue"}]
scoreboard objectives add mb_PowerCost dummy
scoreboard objectives add Age dummy
scoreboard objectives add Page dummy
scoreboard objectives add LastPage dummy
scoreboard objectives add throwerid dummy
scoreboard objectives add success1 dummy
scoreboard objectives add success2 dummy
scoreboard objectives add spiritRealmTimer dummy