# -------------------------------------------------------------------------------------------
# .. DEFINES: Digging
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.digging.level dummy
scoreboard players set @a sklps.digging.level 1
scoreboard objectives add sklps.digging.xp dummy
scoreboard objectives add sklps.digging.initial_blocks dummy
scoreboard objectives add sklps.digging.detect dummy
scoreboard objectives add sklps.digging.count dummy {"text":"Digging","color":"#ad7832"}

# .. Digging Tools
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.digging.shovel.wooden minecraft.used:minecraft.wooden_shovel
scoreboard objectives add sklps.digging.shovel.stone minecraft.used:minecraft.stone_shovel
scoreboard objectives add sklps.digging.shovel.iron minecraft.used:minecraft.iron_shovel
scoreboard objectives add sklps.digging.shovel.golden minecraft.used:minecraft.golden_shovel
scoreboard objectives add sklps.digging.shovel.diamond minecraft.used:minecraft.diamond_shovel
scoreboard objectives add sklps.digging.shovel.netherite minecraft.used:minecraft.netherite_shovel

# .. Sets Initial Value for Shovel Uses
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/digged

# .. Hardness -> 0.15 ~ 0.1
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.digging.block.clay minecraft.mined:minecraft.clay
scoreboard objectives add sklps.digging.block.farmland minecraft.mined:minecraft.farmland
scoreboard objectives add sklps.digging.block.grass-block minecraft.mined:minecraft.grass_block
scoreboard objectives add sklps.digging.block.dirt-path minecraft.mined:minecraft.dirt_path
scoreboard objectives add sklps.digging.block.gravel minecraft.mined:minecraft.gravel
scoreboard objectives add sklps.digging.block.mycelium minecraft.mined:minecraft.mycelium
scoreboard objectives add sklps.digging.block.podzol minecraft.mined:minecraft.podzol
scoreboard objectives add sklps.digging.block.coarse-dirt minecraft.mined:minecraft.coarse_dirt
scoreboard objectives add sklps.digging.block.dirt minecraft.mined:minecraft.dirt
scoreboard objectives add sklps.digging.block.red-sand minecraft.mined:minecraft.red_sand
scoreboard objectives add sklps.digging.block.sand minecraft.mined:minecraft.sand
scoreboard objectives add sklps.digging.block.soul-sand minecraft.mined:minecraft.soul_sand
scoreboard objectives add sklps.digging.block.soul-soil minecraft.mined:minecraft.soul_soil
scoreboard objectives add sklps.digging.block.mud minecraft.mined:minecraft.mud
scoreboard objectives add sklps.digging.block.muddy-mangrove-roots minecraft.mined:minecraft.muddy_mangrove_roots

# .. Hardness -> 0.05
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.digging.block.snow-block minecraft.mined:minecraft.snow_block
scoreboard objectives add sklps.digging.block.snow minecraft.mined:minecraft.snow

# .. Sets Initial Value for Mined Blocks
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/digged_blocks

# .. Sets Initial Ceiling for Leveling
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.digging.xp = @s sklps.digging.initial_blocks
scoreboard players operation @s sklps.digging.xp += #sklps.deltas sklps.digging.delta