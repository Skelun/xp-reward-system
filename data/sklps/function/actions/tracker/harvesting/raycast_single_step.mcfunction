# --------------------------------------------------------------------------------------------
# .. Each step of the ray
# --------------------------------------------------------------------------------------------

# .. Increment distance counter (each step is 0.5 blocks, so 16 steps = 8 blocks)
# --------------------------------------------------------------------------------------------
scoreboard players add @s sklps.harvesting.distance 1

# .. Kill raycast if it has traveled 8 blocks without hitting anything
# --------------------------------------------------------------------------------------------
execute if score @s sklps.harvesting.distance matches 16.. run kill @s

# .. Move the entity forward in looking direction
# --------------------------------------------------------------------------------------------
execute at @s run tp @s ^ ^ ^0.5

# .. Check if it hits mature crops
# --------------------------------------------------------------------------------------------
execute at @s align xyz positioned ~.5 ~.5 ~.5 if predicate sklps:farming/mature_crops \
run function sklps:actions/tracker/harvesting/register_position

# .. Kills it if didn't hit any mature crop
# --------------------------------------------------------------------------------------------
execute unless block ~ ~ ~ #air unless predicate sklps:farming/mature_crops run kill @s