function mb:main/misc
function mb:main/impvmobs
execute as @e[tag=ees] at @s if entity @p[distance=..8] run function mb:main/split/summonee
execute as @e[type=slime,tag=eehealth] at @s run function mb:entities/bosses/ee
execute as @e[tag=treanthealth,tag=!summoned] at @s run function mb:main/split/summontreant
execute as @e[tag=treanthealth,tag=summoned] at @s run function mb:entities/bosses/treant
execute as @e[tag=magicball] at @s run function mb:blocks/crystallball
execute as @e[tag=brazier] at @s run function mb:blocks/brazier
function mb:rituals/infusions
function mb:items/active/mirror
function mb:items/active/coinf
function mb:items/active/mosscrown
function mb:main/thebooktest
function mb:main/thebook
function mb:blocks/altar
function mb:blocks/cauldron
function mb:rituals/normalrituals
function mb:rituals/chalkritualc
function mb:items/active/necrod
execute as @e[tag=banshee] at @s run function mb:entities/normal/banshee

function mb:main/end