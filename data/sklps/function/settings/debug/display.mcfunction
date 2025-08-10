# -------------------------------------------------------------------------------------------
# .. Display Scoreboards in the Sidebar
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.debug.display dummy \
{"text":"Tracker","bold":true,"color":"#873CE8"}

scoreboard objectives setdisplay sidebar sklps.debug.display

scoreboard players operation Cutting sklps.debug.display = @s sklps.cutting.count
scoreboard players operation Digging sklps.debug.display = @s sklps.digging.count
scoreboard players operation Farming sklps.debug.display = @s sklps.farming.count
scoreboard players operation Mining sklps.debug.display = @s sklps.mining.count
scoreboard players operation Traveling sklps.debug.display = @s sklps.traveling.count
scoreboard players operation Harvesting sklps.debug.display = @s sklps.harvesting.count
scoreboard players operation Harv-Detect-temp sklps.debug.display = @s Harvesting_Detect_Temp