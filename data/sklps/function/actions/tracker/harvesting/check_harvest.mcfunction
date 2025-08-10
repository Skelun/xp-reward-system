# --------------------------------------------------------------------------------------------
# .. Check if the crop has been harvested
# -------------------------------------------------------------------------------------------

# .. Starts timer
# -------------------------------------------------------------------------------------------
scoreboard players add @s sklps.harvesting.timer 1

# .. Check if the block is now a fresh crop
# -------------------------------------------------------------------------------------------
execute at @s if predicate sklps:farming/fresh_crops run function sklps:actions/tracker/harvesting/clean_up

# .. Remove marker after 10 ticks if no fresh crops detected
# -------------------------------------------------------------------------------------------
execute if score @s sklps.harvesting.timer matches 10.. run kill @s