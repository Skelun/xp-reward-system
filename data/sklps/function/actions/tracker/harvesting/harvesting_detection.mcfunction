# .. Check if the player is not afk
# -------------------------------------------------------------------------------------------
execute as @a run function sklps:actions/tracker/harvesting/check_activity

# .. If the player is not afk, check if they are near farmland
# -------------------------------------------------------------------------------------------
execute as @a[tag=sklps.harvest.active] run function sklps:actions/tracker/harvesting/check_farmland

# .. If the player is not afk and near farmland, start raycasting
# -------------------------------------------------------------------------------------------
execute as @a[tag=sklps.standing_on_farmland,tag=sklps.harvest.active] run function sklps:actions/tracker/harvesting/raycast
# execute as @a[tag=sklps.standing_on_farmland] run function sklps:actions/tracker/harvesting/raycast

# .. Check if there is a harvestable crop at the marker
# -------------------------------------------------------------------------------------------
execute as @e[type=marker,tag=harvest.position] run function sklps:actions/tracker/harvesting/check_harvest

# .. If there is NOT a harvestable crop at the marker, keep raycasting
# -------------------------------------------------------------------------------------------
execute as @e[type=marker,tag=harvest.raycast,tag=!harvest.hit] at @s run function sklps:actions/tracker/harvesting/raycast_step