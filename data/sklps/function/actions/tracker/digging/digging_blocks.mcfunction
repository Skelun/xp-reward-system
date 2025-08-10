# -------------------------------------------------------------------------------------------
# .. COUNT blocks MINED using SHOVELS
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.digging.count.temp dummy
scoreboard objectives add sklps.digging.hardness-2 dummy

# .. Sets the hardness values
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.digging.hardness-2 2
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.digging.count 0

# .. Blocks with NORMAL hardness
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.clay
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.farmland
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.grass-block
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.dirt-path
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.gravel
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.mycelium
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.podzol
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.coarse-dirt
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.dirt
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.red-sand
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.sand
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.soul-sand
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.soul-soil
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.mud
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.muddy-mangrove-roots
# .. Operations
scoreboard players operation @s sklps.digging.count.temp *= @s sklps.digging.hardness-2
scoreboard players operation @s sklps.digging.count += @s sklps.digging.count.temp
# .. Reset
scoreboard players set @s sklps.digging.count.temp 0

# .. Blocks with HALF as normal hardness
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.snow-block
scoreboard players operation @s sklps.digging.count.temp += @s sklps.digging.block.snow
# .. Operations
scoreboard players operation @s sklps.digging.count.temp /= @s sklps.digging.hardness-2
scoreboard players operation @s sklps.digging.count += @s sklps.digging.count.temp
# .. Reset
scoreboard players set @s sklps.digging.count.temp 0

# -------------------------------------------------------------------------------------------
# .. Gives XP
# -------------------------------------------------------------------------------------------
execute if score @s sklps.digging.count >= @s sklps.digging.xp run function sklps:give_xp

# .. Increments ceiling
# -------------------------------------------------------------------------------------------
execute if score @s sklps.digging.count >= @s sklps.digging.xp run scoreboard players operation @s sklps.digging.xp += #sklps.deltas sklps.digging.delta
execute if score @s sklps.digging.count >= @s sklps.digging.xp run scoreboard players add @s sklps.digging.level 1

# .. Removes unused scoreboards
# -------------------------------------------------------------------------------------------
scoreboard objectives remove sklps.digging.count.temp
# -------------------------------------------------------------------------------------------