# -------------------------------------------------------------------------------------------
# .. If the player is on a MINECART, checks if the rail below is a corner
# -------------------------------------------------------------------------------------------

# .. Tag players riding minecarts
# -------------------------------------------------------------------------------------------
execute as @a[tag=sklps,predicate=sklps:movement/riding_minecart] run tag @s add sklps.traveling.minecart

# .. Detect diagonal rails under those players
# -------------------------------------------------------------------------------------------
execute at @a[tag=sklps.traveling.minecart] if predicate sklps:movement/railbug run tag @s add sklps.tag.traveling.rail_bug

# .. Untag players who stop riding
# -------------------------------------------------------------------------------------------
tag @a[tag=sklps.traveling.minecart,predicate=!sklps:movement/riding_minecart] remove sklps.traveling.minecart

# .. Remove sklps.tag.traveling.rail_bug if no longer on diagonal rail
# -------------------------------------------------------------------------------------------
execute at @a[tag=sklps.traveling.minecart,tag=sklps.tag.traveling.rail_bug] unless predicate sklps:movement/railbug run tag @s remove sklps.tag.traveling.rail_bug
