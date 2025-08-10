# -------------------------------------------------------------------------------------------
# .. FARMING - Mining/Harvesting with HOE
# -------------------------------------------------------------------------------------------

# .. Will start tracking only if player has a HOE in their main hand
# -------------------------------------------------------------------------------------------
execute if predicate sklps:tools/hoe run execute as @s run function sklps:actions/tracker/action/harvesting
execute unless predicate sklps:tools/hoe run tag @s remove sklps.standing_on_farmland
execute unless predicate sklps:tools/hoe run kill @e[type=marker, tag=harvest.raycast, distance=..5]