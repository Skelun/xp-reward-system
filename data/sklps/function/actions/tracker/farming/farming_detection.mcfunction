# -------------------------------------------------------------------------------------------
# .. Checks if the player used a HOE
# -------------------------------------------------------------------------------------------

# .. First: Adds up all the counted uses of the hoe
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.farming.detect.temp dummy
scoreboard objectives add Harvesting_Detect_Temp dummy

scoreboard players operation @s sklps.farming.detect.temp += @s sklps.farming.hoe.wooden
scoreboard players operation @s sklps.farming.detect.temp += @s sklps.farming.hoe.stone
scoreboard players operation @s sklps.farming.detect.temp += @s sklps.farming.hoe.iron
scoreboard players operation @s sklps.farming.detect.temp += @s sklps.farming.hoe.golden
scoreboard players operation @s sklps.farming.detect.temp += @s sklps.farming.hoe.diamond
scoreboard players operation @s sklps.farming.detect.temp += @s sklps.farming.hoe.netherite

scoreboard players operation @s Harvesting_Detect_Temp += @s sklps.harvesting.count

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# -------------------------------------------------------------------------------------------
execute if score @s sklps.farming.detect.temp > @s sklps.farming.detect run function sklps:actions/tracker/farming/farming_blocks

# .. Or if the player is "right-click harvesting"
# -------------------------------------------------------------------------------------------
execute as @s[tag=sklps.harvest.active,tag=sklps.standing_on_farmland] if score @s Harvesting_Detect_Temp > @s sklps.harvesting.detect run function sklps:actions/tracker/farming/harvesting

# .. Third: Update the counter
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.farming.detect = @s sklps.farming.detect.temp
scoreboard players operation @s sklps.harvesting.detect = @s Harvesting_Detect_Temp
# tellraw @s ["Harvesting Detect Temp: ",{score:{"name":"*","objective":"Harvesting_Detect_Temp"}}]

# .. Then: Resets and Remove temporary scores
# -------------------------------------------------------------------------------------------
scoreboard players reset @s sklps.farming.detect.temp
scoreboard players reset @s Harvesting_Detect_Temp
scoreboard objectives remove sklps.farming.detect.temp
scoreboard objectives remove Harvesting_Detect_Temp