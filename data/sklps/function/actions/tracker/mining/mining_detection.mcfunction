# -------------------------------------------------------------------------------------------
# .. Checks if the player used a PICKAXE
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.mining.detect.temp dummy

# .. First: Adds up all the counted uses of the pickaxe
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.detect.temp += @s sklps.mining.pickaxe.wooden
scoreboard players operation @s sklps.mining.detect.temp += @s sklps.mining.pickaxe.stone
scoreboard players operation @s sklps.mining.detect.temp += @s sklps.mining.pickaxe.iron
scoreboard players operation @s sklps.mining.detect.temp += @s sklps.mining.pickaxe.golden
scoreboard players operation @s sklps.mining.detect.temp += @s sklps.mining.pickaxe.diamond
scoreboard players operation @s sklps.mining.detect.temp += @s sklps.mining.pickaxe.netherite

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# -------------------------------------------------------------------------------------------
execute if score @s sklps.mining.detect.temp > @s sklps.mining.detect run function sklps:actions/tracker/mining/mining_blocks

# .. Third: Update the counter
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.detect = @s sklps.mining.detect.temp

# .. Then: Resets and Remove temporary scores
# -------------------------------------------------------------------------------------------
scoreboard players reset @s sklps.mining.detect.temp
scoreboard objectives remove sklps.mining.detect.temp