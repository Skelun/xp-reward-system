# -------------------------------------------------------------------------------------------
# .. DEFINES: Mining
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.mining.level dummy
scoreboard players set @a sklps.mining.level 1
scoreboard objectives add sklps.mining.xp dummy
scoreboard objectives add sklps.mining.initial_blocks dummy
scoreboard objectives add sklps.mining.detect dummy
scoreboard objectives add sklps.mining.count dummy {"text":"Mining","color":"#939ba8"}

# .. Mining Tools
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.pickaxe.wooden minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add sklps.mining.pickaxe.stone minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add sklps.mining.pickaxe.iron minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add sklps.mining.pickaxe.golden minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add sklps.mining.pickaxe.diamond minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add sklps.mining.pickaxe.netherite minecraft.used:minecraft.netherite_pickaxe

# .. Sets Initial Value for Pickaxe Uses
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/mined

# .. Hardness -> 50
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.crying-obisdian minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add sklps.mining.block.obsidian minecraft.mined:minecraft.obsidian

# .. Hardness -> 30
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.ancient-debris minecraft.mined:minecraft.ancient_debris

# .. Hardness -> 5 ~ 4.5
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.deepslate-gold-ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add sklps.mining.block.deepslate-iron-ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add sklps.mining.block.deepslate-copper-ore minecraft.mined:minecraft.deepslate_copper_ore

# .. Hardness -> 3.5 ~ 2.8
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.cobbled-deepslate minecraft.mined:minecraft.cobbled_deepslate
scoreboard objectives add sklps.mining.block.deepslate-bricks minecraft.mined:minecraft.deepslate_bricks
scoreboard objectives add sklps.mining.block.deepslate-tiles minecraft.mined:minecraft.deepslate_tiles
scoreboard objectives add sklps.mining.block.polished-deepslate minecraft.mined:minecraft.polished_deepslate
scoreboard objectives add sklps.mining.block.chiseled-deepslate minecraft.mined:minecraft.chiseled_deepslate
scoreboard objectives add sklps.mining.block.gold-block minecraft.mined:minecraft.gold_block
scoreboard objectives add sklps.mining.block.lapis-block minecraft.mined:minecraft.lapis_block
scoreboard objectives add sklps.mining.block.copper-block minecraft.mined:minecraft.copper_block
scoreboard objectives add sklps.mining.block.copper-ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add sklps.mining.block.deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add sklps.mining.block.end-stone minecraft.mined:minecraft.end_stone
scoreboard objectives add sklps.mining.block.gold-ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add sklps.mining.block.iron-ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add sklps.mining.block.blue-ice minecraft.mined:minecraft.blue_ice

# .. Hardness -> 2
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.bone-block minecraft.mined:minecraft.bone_block
scoreboard objectives add sklps.mining.block.cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add sklps.mining.block.blackstone minecraft.mined:minecraft.polished_blackstone
scoreboard objectives add sklps.mining.block.mossy-cobblestone minecraft.mined:minecraft.mossy_cobblestone
scoreboard objectives add sklps.mining.block.nether-bricks minecraft.mined:minecraft.nether_bricks
scoreboard objectives add sklps.mining.block.red-nether-bricks minecraft.mined:minecraft.red_nether_bricks
scoreboard objectives add sklps.mining.block.cracked-nether-bricks minecraft.mined:minecraft.cracked_nether_bricks
scoreboard objectives add sklps.mining.block.smooth-stone minecraft.mined:minecraft.smooth_stone

# .. Hardness -> Less than 1.5
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.andesite minecraft.mined:minecraft.andesite
scoreboard objectives add sklps.mining.block.blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add sklps.mining.block.amethyst-block minecraft.mined:minecraft.amethyst_block
scoreboard objectives add sklps.mining.block.amethyst-cluster minecraft.mined:minecraft.amethyst_cluster
scoreboard objectives add sklps.mining.block.amethyst-budding minecraft.mined:minecraft.budding_amethyst
scoreboard objectives add sklps.mining.block.dripstone-block minecraft.mined:minecraft.dripstone_block
scoreboard objectives add sklps.mining.block.dripstone minecraft.mined:minecraft.pointed_dripstone
scoreboard objectives add sklps.mining.block.polished-blackstone-bricks minecraft.mined:minecraft.polished_blackstone_bricks
scoreboard objectives add sklps.mining.block.gilded-blackstone minecraft.mined:minecraft.gilded_blackstone
scoreboard objectives add sklps.mining.block.infested-deepslate minecraft.mined:minecraft.infested_deepslate
scoreboard objectives add sklps.mining.block.dark-prismarine minecraft.mined:minecraft.dark_prismarine
scoreboard objectives add sklps.mining.block.diorite minecraft.mined:minecraft.diorite
scoreboard objectives add sklps.mining.block.granite minecraft.mined:minecraft.granite
scoreboard objectives add sklps.mining.block.prismarine minecraft.mined:minecraft.prismarine
scoreboard objectives add sklps.mining.block.prismarine-bricks minecraft.mined:minecraft.prismarine_bricks
scoreboard objectives add sklps.mining.block.stone minecraft.mined:minecraft.stone
scoreboard objectives add sklps.mining.block.stone-bricks minecraft.mined:minecraft.stone_bricks
scoreboard objectives add sklps.mining.block.cracked-stone-bricks minecraft.mined:minecraft.cracked_stone_bricks
scoreboard objectives add sklps.mining.block.purpur-block minecraft.mined:minecraft.purpur_block
scoreboard objectives add sklps.mining.block.purpur-pillar minecraft.mined:minecraft.purpur_pillar
scoreboard objectives add sklps.mining.block.tuff minecraft.mined:minecraft.tuff
scoreboard objectives add sklps.mining.block.terracota minecraft.mined:minecraft.terracotta
scoreboard objectives add sklps.mining.block.basalt minecraft.mined:minecraft.basalt
scoreboard objectives add sklps.mining.block.packed-mud minecraft.mined:minecraft.packed_mud
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.mining.block.infested-cobblestone minecraft.mined:minecraft.infested_cobblestone
scoreboard objectives add sklps.mining.block.quartz-block minecraft.mined:minecraft.quartz_block
scoreboard objectives add sklps.mining.block.sandstone minecraft.mined:minecraft.sandstone
scoreboard objectives add sklps.mining.block.red-sandstone minecraft.mined:minecraft.red_sandstone
scoreboard objectives add sklps.mining.block.calcite minecraft.mined:minecraft.calcite
scoreboard objectives add sklps.mining.block.infested-stone minecraft.mined:minecraft.infested_stone
scoreboard objectives add sklps.mining.block.magma-block minecraft.mined:minecraft.magma_block
scoreboard objectives add sklps.mining.block.ice minecraft.mined:minecraft.ice
scoreboard objectives add sklps.mining.block.packed-ice minecraft.mined:minecraft.packed_ice
scoreboard objectives add sklps.mining.block.frosted-ice minecraft.mined:minecraft.frosted_ice
scoreboard objectives add sklps.mining.block.netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add sklps.mining.block.warped-nylium minecraft.mined:minecraft.warped_nylium
scoreboard objectives add sklps.mining.block.crimson-nylium minecraft.mined:minecraft.crimson_nylium

# .. Sets Initial Value for Mined Blocks
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/mined_blocks

# .. Sets Initial Ceiling for Leveling
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.xp = @s sklps.mining.initial_blocks
scoreboard players operation @s sklps.mining.xp += #sklps.deltas sklps.mining.delta