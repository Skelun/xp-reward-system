# -------------------------------------------------------------------------------------------
# .. Checks if the player used an AXE
# -------------------------------------------------------------------------------------------

# .. First: Adds up all the counted uses of the axe
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.detect.temp dummy

scoreboard players operation @s sklps.cutting.detect.temp += @s sklps.cutting.axe.wooden
scoreboard players operation @s sklps.cutting.detect.temp += @s sklps.cutting.axe.stone
scoreboard players operation @s sklps.cutting.detect.temp += @s sklps.cutting.axe.iron
scoreboard players operation @s sklps.cutting.detect.temp += @s sklps.cutting.axe.golden
scoreboard players operation @s sklps.cutting.detect.temp += @s sklps.cutting.axe.diamond
scoreboard players operation @s sklps.cutting.detect.temp += @s sklps.cutting.axe.netherite

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# -------------------------------------------------------------------------------------------
execute if score @s sklps.cutting.detect.temp > @s sklps.cutting.detect run function sklps:actions/tracker/cutting/cutting_blocks

# .. Third: Update the counter
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.detect = @s sklps.cutting.detect.temp

# .. Then: Resets and Remove temporary scores
# -------------------------------------------------------------------------------------------
scoreboard players reset @s sklps.cutting.detect.temp
scoreboard objectives remove sklps.cutting.detect.temp