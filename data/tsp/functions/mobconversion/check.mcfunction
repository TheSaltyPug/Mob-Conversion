# check the mobs we want to convert

# zombie piglin
execute as @e[type=minecraft:zombified_piglin,tag=!global.ignore,tag=!tsp.mobconversion.tagged,predicate=tsp:mobconversion/has_speed] at @s if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:golden_carrot"}},distance=..1] run function tsp:mobconversion/run/zombified_piglin

# zoglin
execute as @e[type=minecraft:zoglin,tag=!global.ignore,tag=!tsp.mobconversion.tagged,predicate=tsp:mobconversion/has_speed] at @s if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:golden_carrot"}},distance=..1] run function tsp:mobconversion/run/zoglin

# witch
execute as @e[type=minecraft:witch,tag=!global.ignore,tag=!tsp.mobconversion.tagged,predicate=tsp:mobconversion/has_weakness] at @s if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:golden_apple"}},distance=..1] run function tsp:mobconversion/run/witch

# cow
execute as @e[type=minecraft:cow,tag=!global.ignore,tag=!tsp.mobconversion.tagged,predicate=tsp:mobconversion/has_weakness] at @s if entity @e[type=minecraft:item,tag=!global.ignore,nbt={Item:{id:"minecraft:brown_mushroom"}},distance=..1] if entity @e[type=minecraft:item,tag=!global.ignore,nbt={Item:{id:"minecraft:red_mushroom"}},distance=..1] run function tsp:mobconversion/run/cow

# skeleton horse
execute as @e[type=minecraft:skeleton_horse,tag=!global.ignore,tag=!tsp.mobconversion.tagged,predicate=tsp:mobconversion/has_weakness] at @s if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:golden_apple"}},distance=..1] run function tsp:mobconversion/run/skeleton_horse

# zombie horse
execute as @e[type=minecraft:zombie_horse,tag=!global.ignore,tag=!tsp.mobconversion.tagged,predicate=tsp:mobconversion/has_weakness] at @s if entity @e[type=minecraft:item, nbt={Item:{id:"minecraft:golden_apple"}},distance=..1] run function tsp:mobconversion/run/zombie_horse


# re-schedule this function
schedule function tsp:mobconversion/check 15t
