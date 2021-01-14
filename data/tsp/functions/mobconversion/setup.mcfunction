#> This function will run on datapack loading
# count 
scoreboard objectives add tsp.mco.icount dummy

# to help server performance, we just run every five ticks. Schedule it!
schedule function tsp:mobconversion/check 15t
