# -------------------------------------------------------------------------------------------
# .. DEFINE: CUTTING
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.cutting.level dummy
scoreboard players set @s sklps.cutting.level 1
scoreboard objectives add sklps.cutting.xp dummy
scoreboard objectives add sklps.cutting.initial_blocks dummy
scoreboard objectives add sklps.cutting.detect dummy
scoreboard objectives add sklps.cutting.count dummy {"text":"Cutting","color":"#28a06e"}

# .. Cutting Tools
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.axe.wooden minecraft.used:minecraft.wooden_axe
scoreboard objectives add sklps.cutting.axe.stone minecraft.used:minecraft.stone_axe
scoreboard objectives add sklps.cutting.axe.iron minecraft.used:minecraft.iron_axe
scoreboard objectives add sklps.cutting.axe.golden minecraft.used:minecraft.golden_axe
scoreboard objectives add sklps.cutting.axe.diamond minecraft.used:minecraft.diamond_axe
scoreboard objectives add sklps.cutting.axe.netherite minecraft.used:minecraft.netherite_axe

# .. Sets the initial value for shovel uses
# -------------------------------------------------------------------------------------------
execute as @a[tag=sklps] run function sklps:actions/define/initial/cut

# .. Cuttable Blocks
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.block.acacia-log minecraft.mined:minecraft.acacia_log
scoreboard objectives add sklps.cutting.block.birch-log minecraft.mined:minecraft.birch_log
scoreboard objectives add sklps.cutting.block.cherry-log minecraft.mined:minecraft.cherry_log
scoreboard objectives add sklps.cutting.block.crimson-stem minecraft.mined:minecraft.crimson_stem
scoreboard objectives add sklps.cutting.block.dark-oak-log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add sklps.cutting.block.jungle-log minecraft.mined:minecraft.jungle_log
scoreboard objectives add sklps.cutting.block.mangrove-log minecraft.mined:minecraft.mangrove_log
scoreboard objectives add sklps.cutting.block.oak-log minecraft.mined:minecraft.oak_log
scoreboard objectives add sklps.cutting.block.pale-oak-log minecraft.mined:minecraft.pale_oak_log
scoreboard objectives add sklps.cutting.block.spruce-log minecraft.mined:minecraft.spruce_log
scoreboard objectives add sklps.cutting.block.warped-stem minecraft.mined:minecraft.warped_stem
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.block.acacia-wood minecraft.mined:acacia_wood
scoreboard objectives add sklps.cutting.block.birch-wood minecraft.mined:birch_wood
scoreboard objectives add sklps.cutting.block.crimson-hyphae minecraft.mined:minecraft.crimson_hyphae
scoreboard objectives add sklps.cutting.block.dark-oak-wood minecraft.mined:dark_oak_wood
scoreboard objectives add sklps.cutting.block.cherry-wood minecraft.mined:cherry_wood
scoreboard objectives add sklps.cutting.block.jungle-wood minecraft.mined:jungle_wood
scoreboard objectives add sklps.cutting.block.mangrove-wood minecraft.mined:mangrove_wood
scoreboard objectives add sklps.cutting.block.oak-wood minecraft.mined:oak_wood
scoreboard objectives add sklps.cutting.block.pale-oak-wood minecraft.mined:pale_oak_wood
scoreboard objectives add sklps.cutting.block.spruce-wood minecraft.mined:spruce_wood
scoreboard objectives add sklps.cutting.block.warped-hyphae minecraft.mined:minecraft.warped_hyphae
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.block.stripped-acacia-log minecraft.mined:minecraft.stripped_acacia_log
scoreboard objectives add sklps.cutting.block.stripped-birch-log minecraft.mined:minecraft.stripped_birch_log
scoreboard objectives add sklps.cutting.block.stripped-crimson-stem minecraft.mined:minecraft.stripped_crimson_stem
scoreboard objectives add sklps.cutting.block.stripped-cherry-log minecraft.mined:minecraft.stripped_cherry_log
scoreboard objectives add sklps.cutting.block.stripped-dark-oak-log minecraft.mined:minecraft.stripped_dark_oak_log
scoreboard objectives add sklps.cutting.block.stripped-jungle-log minecraft.mined:minecraft.stripped_jungle_log
scoreboard objectives add sklps.cutting.block.stripped-mangrove-log minecraft.mined:minecraft.stripped_mangrove_log
scoreboard objectives add sklps.cutting.block.stripped-oak-log minecraft.mined:minecraft.stripped_oak_log
scoreboard objectives add sklps.cutting.block.stripped-pale-oak-log minecraft.mined:minecraft.stripped_pale_oak_log
scoreboard objectives add sklps.cutting.block.stripped-spruce-log minecraft.mined:minecraft.stripped_spruce_log
scoreboard objectives add sklps.cutting.block.stripped-warped-stem minecraft.mined:minecraft.stripped_warped_stem
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.block.stripped-acacia-wood minecraft.mined:stripped_acacia_wood
scoreboard objectives add sklps.cutting.block.stripped-birch-wood minecraft.mined:stripped_birch_wood
scoreboard objectives add sklps.cutting.block.stripped-crimson-hyphae minecraft.mined:minecraft.stripped_crimson_hyphae
scoreboard objectives add sklps.cutting.block.stripped-dark-oak-wood minecraft.mined:stripped_dark_oak_wood
scoreboard objectives add sklps.cutting.block.stripped-cherry-wood minecraft.mined:stripped_cherry_wood
scoreboard objectives add sklps.cutting.block.stripped-jungle-wood minecraft.mined:stripped_jungle_wood
scoreboard objectives add sklps.cutting.block.stripped-mangrove-wood minecraft.mined:stripped_mangrove_wood
scoreboard objectives add sklps.cutting.block.stripped-oak-wood minecraft.mined:stripped_oak_wood
scoreboard objectives add sklps.cutting.block.stripped-pale-oak-wood minecraft.mined:stripped_pale_oak_wood
scoreboard objectives add sklps.cutting.block.stripped-spruce-wood minecraft.mined:stripped_spruce_wood
scoreboard objectives add sklps.cutting.block.stripped-warped-hyphae minecraft.mined:minecraft.stripped_warped_hyphae

# .. Melts-like-butter Blocks
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.block.mangrove-roots minecraft.mined:minecraft.mangrove_roots
scoreboard objectives add sklps.cutting.block.melon minecraft.mined:minecraft.melon
scoreboard objectives add sklps.cutting.block.pumpkin minecraft.mined:minecraft.pumpkin
scoreboard objectives add sklps.cutting.block.bee-nest minecraft.mined:minecraft.bee_nest
scoreboard objectives add sklps.cutting.block.bamboo minecraft.mined:minecraft.bamboo
scoreboard objectives add sklps.cutting.block.cocoa minecraft.mined:minecraft.cocoa
scoreboard objectives add sklps.cutting.block.red-mushroom-block minecraft.mined:minecraft.red_mushroom_block
scoreboard objectives add sklps.cutting.block.brown-mushroom-block minecraft.mined:minecraft.brown_mushroom_block
scoreboard objectives add sklps.cutting.block.mushroom-stem minecraft.mined:minecraft.mushroom_stem

# .. Sets initial value for "Cut" blocks
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/cut_blocks

# .. SETS INITIAL CEILING FOR LEVELING
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.cutting.xp = @s sklps.cutting.initial_blocks
scoreboard players operation @s sklps.cutting.xp += #sklps.deltas sklps.cutting.delta