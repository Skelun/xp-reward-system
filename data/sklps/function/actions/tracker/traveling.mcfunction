# -------------------------------------------------------------------------------------------
# .. TRAVELING - Moving around by foot or vehicle
# -------------------------------------------------------------------------------------------

# .. Will start tracking 9 ticks after player moved
# -------------------------------------------------------------------------------------------
execute if score #sklps.chrono sklps.timer.10-ticks matches 10 as @s run function sklps:actions/tracker/traveling/check_movement/position1
execute if score #sklps.chrono sklps.timer.10-ticks matches 5 as @s run function sklps:actions/tracker/traveling/check_movement/position2
execute if score #sklps.chrono sklps.timer.10-ticks matches 0 as @s run function sklps:actions/tracker/traveling/check_movement/moving