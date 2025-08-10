# -------------------------------------------------------------------------------------------
# .. If the player IS ON A BOAT, targets the nearest entity, which is
# .. the boat itself and check the block below
# -------------------------------------------------------------------------------------------

# .. Tag players riding boats
# -------------------------------------------------------------------------------------------
execute as @a[predicate=sklps:movement/riding_boat] run tag @s add sklps.traveling.boat

# .. Detect ice under those players
# -------------------------------------------------------------------------------------------
execute at @a[tag=sklps.traveling.boat] if predicate sklps:movement/ice run tag @s add sklps.tag.traveling.ice_boating

# .. Untag players who are not on a bot
# -------------------------------------------------------------------------------------------
tag @a[tag=sklps.traveling.boat,predicate=!sklps:movement/riding_boat] remove sklps.traveling.boat
tag @a[tag=sklps.tag.traveling.ice_boating,predicate=!sklps:movement/riding_boat] remove sklps.tag.traveling.ice_boating

# .. Untag players that are not on ice
# -------------------------------------------------------------------------------------------
execute at @a[tag=sklps.traveling.boat,tag=sklps.tag.traveling.ice_boating] unless predicate sklps:movement/ice run tag @s remove sklps.tag.traveling.ice_boating
