# this should only be called by the conversion item
# store Count in score
execute store result score @s tsp.mco.icount run data get entity @s Item.Count 1

# remove 1 from score
scoreboard players remove @s tsp.mco.icount 1

# set item Count to score
execute store result entity @s Item.Count byte 1 run scoreboard players get @s tsp.mco.icount
