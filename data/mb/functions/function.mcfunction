#MIT License

#Copyright (c) 2019 Ancient_Spirit

#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:

#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

function mb:main/misc
function mb:main/impvmobs
execute as @e[tag=magicball] at @s run function mb:blocks/crystallball
execute as @e[tag=brazier] at @s run function mb:blocks/brazier
execute as @e[tag=mortar] at @s run function mb:blocks/mortar
function mb:rituals/infusions
function mb:items/active/mirror
function mb:items/active/coinf
function mb:items/active/mosscrown
function mb:main/thebooktest
function mb:main/thebook
function mb:main/advancements
function mb:blocks/altar
function mb:blocks/cauldron
function mb:rituals/chalkritualc
function mb:rituals/normalrituals
function mb:items/active/necrod
execute as @e[tag=banshee] at @s run function mb:entities/normal/banshee
execute as @a[tag=movetoSoulDim] at @s run function mb:dim/warpinit
execute as @a[tag=inSoulDim] at @s in the_nether unless entity @e[tag=souldimfence,distance=..30] run function mb:dim/loadworld

function mb:main/end