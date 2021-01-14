# kill the conversion item
# (run function that removes 1 from Item.Count. If it is 0, minecraft
# will automatically kill it)
execute at @s as @e[type=minecraft:item,tag=!global.ignore,nbt={Item:{id:"minecraft:golden_apple"}},distance=..1] run function tsp:mobconversion/run/takeone

# summon the new mob
summon villager ~ ~ ~ {VillagerData:{level:2,profession:"minecraft:cleric"},Offers:{Recipes:[{rewardExp:1b,buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:regeneration"}}}]}}

# remove the old one
tp @s ~ ~-260 ~ 

# play converted sound
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~
