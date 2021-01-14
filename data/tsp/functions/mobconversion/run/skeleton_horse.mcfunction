# kill the conversion item
# (run function that removes 1 from Item.Count. If it is 0, minecraft
# will automatically kill it)
execute at @s as @e[type=minecraft:item,tag=!global.ignore,nbt={Item:{id:"minecraft:golden_apple"}},distance=..1] run function tsp:mobconversion/run/takeone

# summon the new mob
summon minecraft:zombie_horse ~ ~ ~

# remove the old one
tp @s ~ ~-260 ~ 

# play converted sound
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~
