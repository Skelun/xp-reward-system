# --------------------------------------------------------------------------------------------
# .. Check if player is near farmland
# -------------------------------------------------------------------------------------------

execute at @s if predicate sklps:farming/near_farmland run tag @s add sklps.standing_on_farmland
execute at @s unless predicate sklps:farming/near_farmland run tag @s remove sklps.standing_on_farmland