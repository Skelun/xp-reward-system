# -------------------------------------------------------------------------------------------
# .. COUNT blocks MINED using PICKAXES
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.mining.count.temp dummy
scoreboard objectives add sklps.mining.count.multiplier dummy
scoreboard objectives add sklps.mining.hardness-50 dummy
scoreboard objectives add sklps.mining.hardness-30 dummy
scoreboard objectives add sklps.mining.hardness-5 dummy

scoreboard players set @s sklps.mining.count 0

# .. Sets the hardness values
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.mining.hardness-50 10
scoreboard players set @s sklps.mining.hardness-30 6
scoreboard players set @s sklps.mining.hardness-5 2

# .. Blocks with hardness ~50
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.crying-obisdian
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.obsidian
# .. Operations
scoreboard players operation @s sklps.mining.count.temp *= @s sklps.mining.hardness-50
scoreboard players operation @s sklps.mining.count += @s sklps.mining.count.temp
# .. Reset
scoreboard players set @s sklps.mining.count.temp 0

# .. Blocks with hardness ~30
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.ancient-debris
# .. Operations
scoreboard players operation @s sklps.mining.count.temp *= @s sklps.mining.hardness-30
scoreboard players operation @s sklps.mining.count += @s sklps.mining.count.temp
# .. Reset
scoreboard players set @s sklps.mining.count.temp 0

# .. Blocks with hardness ~5
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.deepslate-gold-ore
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.deepslate-iron-ore
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.deepslate-copper-ore
# .. Operations
scoreboard players operation @s sklps.mining.count.temp *= @s sklps.mining.hardness-5
scoreboard players operation @s sklps.mining.count += @s sklps.mining.count.temp

scoreboard players set @s sklps.mining.count.temp 0

# .. Blocks with hardness ~3
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.cobbled-deepslate
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.deepslate-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.deepslate-tiles
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.polished-deepslate
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.chiseled-deepslate
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.gold-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.lapis-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.copper-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.copper-ore
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.deepslate
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.end-stone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.gold-ore
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.iron-ore
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.blue-ice
# .. Operations
scoreboard players operation @s sklps.mining.count.multiplier = @s sklps.mining.count.temp
scoreboard players operation @s sklps.mining.count.multiplier /= @s sklps.mining.hardness-5
scoreboard players operation @s sklps.mining.count.temp = @s sklps.mining.count.temp
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.count.multiplier
scoreboard players operation @s sklps.mining.count += @s sklps.mining.count.temp
# .. Reset
scoreboard players set @s sklps.mining.count.multiplier 0
scoreboard players set @s sklps.mining.count.temp 0

# .. Blocks with hardness 2 & 1
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.bone-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.cobblestone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.blackstone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.mossy-cobblestone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.nether-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.red-nether-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.cracked-nether-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.smooth-stone
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.amethyst-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.amethyst-cluster
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.amethyst-budding
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.andesite
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.blackstone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.polished-blackstone-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.gilded-blackstone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.dripstone-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.dripstone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.infested-deepslate
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.dark-prismarine
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.diorite
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.granite
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.prismarine
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.prismarine-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.stone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.stone-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.cracked-stone-bricks
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.purpur-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.purpur-pillar
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.tuff
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.terracota
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.basalt
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.infested-cobblestone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.quartz-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.sandstone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.red-sandstone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.calcite
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.infested-stone
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.magma-block
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.ice
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.packed-ice
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.frosted-ice
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.netherrack
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.warped-nylium
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.crimson-nylium
scoreboard players operation @s sklps.mining.count.temp += @s sklps.mining.block.packed-mud
# .. Operations
scoreboard players operation @s sklps.mining.count += @s sklps.mining.count.temp
# .. Reset
scoreboard players set @s sklps.mining.count.temp 0

# .. Gives xp
# -------------------------------------------------------------------------------------------
execute if score @s sklps.mining.count >= @s sklps.mining.xp run function sklps:give_xp

# .. Increments ceiling
# -------------------------------------------------------------------------------------------
execute if score @s sklps.mining.count >= @s sklps.mining.xp run scoreboard players operation @s sklps.mining.xp += #sklps.deltas sklps.mining.delta
execute if score @s sklps.mining.count >= @s sklps.mining.xp run scoreboard players add @s sklps.mining.level 1

# .. Resets and Remove temporary scores
# -------------------------------------------------------------------------------------------
scoreboard objectives remove sklps.mining.count.temp
scoreboard objectives remove sklps.mining.count.multiplier
scoreboard objectives remove sklps.mining.hardness-50
scoreboard objectives remove sklps.mining.hardness-30
scoreboard objectives remove sklps.mining.hardness-5