# -------------------------------------------------------------------------------------------
# .. COUNT crops HARVESTED using HOES
# -------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------
# .. Temporary scoreboards
# -------------------------------------------------------------------------------------------
scoreboard objectives add Harvesting_Count_Temp dummy

# -------------------------------------------------------------------------------------------
# .. HARVESTED Crops
# -------------------------------------------------------------------------------------------
scoreboard players operation @s Harvesting_Count_Temp = @s sklps.harvesting.count
scoreboard players operation @s Harvesting_Count_Temp -= @s sklps.harvesting.detect
scoreboard players operation @s sklps.farming.count += @s Harvesting_Count_Temp
# # .. Reset
scoreboard players set @s Harvesting_Detect_Temp 0
scoreboard players operation @s sklps.harvesting.detect = @s sklps.farming.count

# -------------------------------------------------------------------------------------------
# .. Gives xp
# -------------------------------------------------------------------------------------------
execute if score @s sklps.farming.count >= @s sklps.farming.xp run function sklps:give_xp

# .. Increments ceiling
# -------------------------------------------------------------------------------------------
execute if score @s sklps.farming.count >= @s sklps.farming.xp run scoreboard players operation @s sklps.farming.xp += #sklps.deltas sklps.farming.delta
execute if score @s sklps.farming.count >= @s sklps.farming.xp run scoreboard players add @s sklps.farming.level 1

# .. Removes temporary scoreboards
# -------------------------------------------------------------------------------------------
scoreboard objectives remove Harvesting_Detect_Temp