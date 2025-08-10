# -------------------------------------------------------------------------------------------
# .. TRACKS all the MOVEMENTS of a player
# -------------------------------------------------------------------------------------------
# .. It also converts Centimeters to Blocks (1 Block = 100 cm³)
# .. And the balance is made using the centimeters needed to sum up as a block
# -------------------------------------------------------------------------------------------

# .. Lets give some tags to control buffs
# .. preventing the abuse of this datapack feature
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/tags

# .. If the traveling method is slow it will count 50cm as one block 
# .. to give more experience
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/slow

# .. If the traveling method is normal it will count normally
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/normal

# .. The faster methods of traveling are around 30% ~ 100% faster than the normal ones
# .. so it will need double the amount of centimeters to reach one block distance
# .. to give less experience
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/fast

# .. The fastest method of flying is using an elytra, and since this is op,
# .. and discourage any other traveling method, it will be 10x harder to get XP
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/fastest

# .. Sprinting
# .. It has to be special 'cause speed buff and Sprint-Jump
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/sprinting

# .. Jumping
# .. It has to be special 'cause it changes speed in a lot of manners
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/jumping

# .. Boat
# .. It has to be special 'cause ice-boating is a thing
# -------------------------------------------------------------------------------------------
function sklps:actions/tracker/traveling/boating

# .. ADDS UP EVERYTHING
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.traveling.count = @s sklps.traveling.count.temp
scoreboard players set @s sklps.traveling.count.temp 0

# .. REMOVE TAGS
# -------------------------------------------------------------------------------------------
execute as @a run tag @s remove sklps.tag.traveling.dolphin
execute as @a run tag @s remove sklps.tag.traveling.elytra
execute as @a run tag @s remove sklps.tag.traveling.ice_boating
execute as @a run tag @s remove sklps.tag.moving
execute as @a run tag @s remove sklps.tag.traveling.soul
execute as @a run tag @s remove sklps.tag.traveling.speed
execute as @a run tag @s remove sklps.tag.traveling.sprinting
execute as @a run tag @s remove sklps.tag.traveling.rail_bug

# .. GIVES XP
# -------------------------------------------------------------------------------------------
execute if score @s sklps.traveling.count >= @s sklps.traveling.xp run function sklps:give_xp

# .. INCREMENTS CEILING
# -------------------------------------------------------------------------------------------
execute if score @s sklps.traveling.count >= @s sklps.traveling.xp run scoreboard players operation @s sklps.traveling.xp += #sklps.deltas sklps.traveling.delta
execute if score @s sklps.traveling.count >= @s sklps.traveling.xp run scoreboard players add @s sklps.traveling.level 1