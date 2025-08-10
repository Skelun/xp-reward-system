# .. Slow
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 50

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.low1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.low2.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.low3.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# .. Jumps
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.jump.jumps
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# -------------------------------------------------------------------------------------------
# .. Normal
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 100

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal2.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal3.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal4.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# -------------------------------------------------------------------------------------------
# .. Fast
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 200

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.fast1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.fast2.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# .. Sprint
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.sprint.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# .. Boating
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.boat.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# -------------------------------------------------------------------------------------------
# .. Fastest
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 1000

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
scoreboard players set @s sklps.traveling.convert_block 0

# -------------------------------------------------------------------------------------------
# .. Adds All Up
# -------------------------------------------------------------------------------------------

scoreboard players operation @s sklps.traveling.Initial = @s sklps.traveling.count.temp
scoreboard players set @s sklps.traveling.count.temp 0