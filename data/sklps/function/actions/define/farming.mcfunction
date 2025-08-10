# -------------------------------------------------------------------------------------------
# .. DEFINES: Farming
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.farming.level dummy
scoreboard players set @a sklps.farming.level 1
scoreboard objectives add sklps.farming.xp dummy
scoreboard objectives add sklps.farming.initial_blocks dummy
scoreboard objectives add sklps.farming.detect dummy
scoreboard objectives add sklps.farming.count dummy {"text":"Farming","color":"#c0c25f"}

# .. Farming Tools
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.farming.hoe.wooden minecraft.used:minecraft.wooden_hoe
scoreboard objectives add sklps.farming.hoe.stone minecraft.used:minecraft.stone_hoe
scoreboard objectives add sklps.farming.hoe.iron minecraft.used:minecraft.iron_hoe
scoreboard objectives add sklps.farming.hoe.golden minecraft.used:minecraft.golden_hoe
scoreboard objectives add sklps.farming.hoe.diamond minecraft.used:minecraft.diamond_hoe
scoreboard objectives add sklps.farming.hoe.netherite minecraft.used:minecraft.netherite_hoe

# .. Sets Initial Value for Hoe Uses
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/farmed

# .. Time to break -> 0.2 ~ 0.25
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.farming.block.nether-wart minecraft.mined:minecraft.nether_wart_block
scoreboard objectives add sklps.farming.block.warped-wart minecraft.mined:minecraft.warped_wart_block
scoreboard objectives add sklps.farming.block.shroomlight minecraft.mined:minecraft.shroomlight

# .. Time to break -> 0.1
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.farming.crop.wheat minecraft.mined:minecraft.wheat
scoreboard objectives add sklps.farming.crop.beetroots minecraft.mined:minecraft.beetroots
scoreboard objectives add sklps.farming.crop.potatoes minecraft.mined:minecraft.potatoes
scoreboard objectives add sklps.farming.crop.carrots minecraft.mined:minecraft.carrots
scoreboard objectives add sklps.farming.crop.nether-wart minecraft.mined:minecraft.nether_wart
scoreboard objectives add sklps.farming.block.sponge minecraft.mined:minecraft.sponge
scoreboard objectives add sklps.farming.block.wet-sponge minecraft.mined:minecraft.wet_sponge

# .. Time to break -> 0.05
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.farming.block.moss minecraft.mined:minecraft.moss_block
scoreboard objectives add sklps.farming.block.pale-moss minecraft.mined:minecraft.pale_moss_block

# .. Sets Initial Value For Farmed Blocks
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/farmed_blocks

# .. Sets Initial Ceiling for Leveling
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.farming.xp = @s sklps.farming.initial_blocks
scoreboard players operation @s sklps.farming.xp += #sklps.deltas sklps.farming.delta