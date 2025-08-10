# -------------------------------------------------------------------------------------------
# .. Checks if the player used a SHOVEL
# -------------------------------------------------------------------------------------------

# .. First: Adds up all the counted uses of the shovel
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.digging.detect.temp dummy

scoreboard players operation @s sklps.digging.detect.temp += @s sklps.digging.shovel.wooden
scoreboard players operation @s sklps.digging.detect.temp += @s sklps.digging.shovel.stone
scoreboard players operation @s sklps.digging.detect.temp += @s sklps.digging.shovel.iron
scoreboard players operation @s sklps.digging.detect.temp += @s sklps.digging.shovel.golden
scoreboard players operation @s sklps.digging.detect.temp += @s sklps.digging.shovel.diamond
scoreboard players operation @s sklps.digging.detect.temp += @s sklps.digging.shovel.netherite

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# -------------------------------------------------------------------------------------------
execute if score @s sklps.digging.detect.temp > @s sklps.digging.detect run function sklps:actions/tracker/digging/digging_blocks

# .. Third: Update the counter
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.digging.detect = @s sklps.digging.detect.temp

# .. Then: Resets and Remove temporary scores
# -------------------------------------------------------------------------------------------
scoreboard players reset @s sklps.digging.detect.temp
scoreboard objectives remove sklps.digging.detect.temp