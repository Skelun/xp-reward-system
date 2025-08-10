# -------------------------------------------------------------------------------------------
# .. COUNT blocks MINED using AXES
# -------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------
# .. Temporary scoreboards
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.count.temp dummy
scoreboard objectives add sklps.cutting.hardness-2 dummy
# -------------------------------------------------------------------------------------------
# .. Sets the hardness values
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.cutting.hardness-2 4
# -------------------------------------------------------------------------------------------
# .. Scoreboard with total
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.cutting.count 0
# -------------------------------------------------------------------------------------------

# .. NORMAL time to cut
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.acacia-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.birch-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.cherry-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.crimson-stem
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.dark-oak-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.jungle-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.mangrove-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.oak-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.pale-oak-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.spruce-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.warped-stem
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.acacia-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.birch-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.crimson-hyphae
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.dark-oak-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.cherry-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.jungle-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.mangrove-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.oak-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.pale-oak-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.spruce-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.warped-hyphae
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-acacia-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-birch-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-crimson-stem
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-cherry-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-dark-oak-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-jungle-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-mangrove-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-oak-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-pale-oak-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-spruce-log
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-warped-stem
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-acacia-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-birch-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-crimson-hyphae
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-dark-oak-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-cherry-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-jungle-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-mangrove-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-oak-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-pale-oak-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-spruce-wood
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.stripped-warped-hyphae
# .. Operations
scoreboard players operation @s sklps.cutting.count.temp *= @s sklps.cutting.hardness-2
scoreboard players operation @s sklps.cutting.count += @s sklps.cutting.count.temp
# .. Reset
scoreboard players set @s sklps.cutting.count.temp 0

# .. LOW time to cut
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.mangrove-roots
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.melon
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.pumpkin
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.bee-nest
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.bamboo
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.cocoa
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.red-mushroom-block
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.brown-mushroom-block
scoreboard players operation @s sklps.cutting.count.temp += @s sklps.cutting.block.mushroom-stem
# .. Operations
scoreboard players operation @s sklps.cutting.count += @s sklps.cutting.count.temp
# .. Reset
scoreboard players set @s sklps.cutting.count.temp 0

# .. Gives xp
# -------------------------------------------------------------------------------------------
execute if score @s sklps.cutting.count >= @s sklps.cutting.xp run function sklps:give_xp

# .. Increments ceiling
# -------------------------------------------------------------------------------------------
execute if score @s sklps.cutting.count >= @s sklps.cutting.xp run scoreboard players operation @s sklps.cutting.xp += #sklps.deltas sklps.cutting.delta
execute if score @s sklps.cutting.count >= @s sklps.cutting.xp run scoreboard players add @s sklps.cutting.level 1

# .. Removes temporary scoreboards
# -------------------------------------------------------------------------------------------
scoreboard objectives remove sklps.cutting.count.temp
scoreboard objectives remove sklps.cutting.hardness-2