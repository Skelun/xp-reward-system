# -------------------------------------------------------------------------------------------
# .. Converts CENTIMETERS to BLOCKS
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 1000

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block