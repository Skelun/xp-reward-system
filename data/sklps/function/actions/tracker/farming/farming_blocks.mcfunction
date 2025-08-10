# -------------------------------------------------------------------------------------------
# .. COUNT blocks MINED using HOES
# -------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------
# .. Temporary scoreboards
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.farming.count.temp dummy
scoreboard objectives add sklps.farming.time-to-break-2 dummy
scoreboard objectives add sklps.farming.time-to-break-4 dummy
# -------------------------------------------------------------------------------------------
# .. Set the time to break values
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.farming.time-to-break-2 2
scoreboard players set @s sklps.farming.time-to-break-4 4
# -------------------------------------------------------------------------------------------
# .. Scoreboard with total
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.farming.count 0
# -------------------------------------------------------------------------------------------

# .. Blocks with 4X the time to farm
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.nether-wart
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.shroomlight
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.warped-wart
# .. Operations
scoreboard players operation @s sklps.farming.count.temp *= @s sklps.farming.time-to-break-4
scoreboard players operation @s sklps.farming.count += @s sklps.farming.count.temp
# .. Reset
scoreboard players set @s sklps.farming.count.temp 0

# .. Blocks with 2X the time to farm
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.sponge
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.wet-sponge
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.crop.beetroots
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.crop.carrots
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.crop.nether-wart
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.crop.potatoes
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.crop.wheat
# .. Operations
scoreboard players operation @s sklps.farming.count.temp *= @s sklps.farming.time-to-break-2
scoreboard players operation @s sklps.farming.count += @s sklps.farming.count.temp
# .. Reset
scoreboard players set @s sklps.farming.count.temp 0

# .. Blocks with NORMAL the time to farm
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.moss
scoreboard players operation @s sklps.farming.count.temp += @s sklps.farming.block.pale-moss
# .. Operations
scoreboard players operation @s sklps.farming.count += @s sklps.farming.count.temp
# .. Reset
scoreboard players set @s sklps.farming.count.temp 0

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
scoreboard objectives remove sklps.farming.count.temp
scoreboard objectives remove sklps.farming.time-to-break-2
scoreboard objectives remove sklps.farming.time-to-break-4
# -------------------------------------------------------------------------------------------