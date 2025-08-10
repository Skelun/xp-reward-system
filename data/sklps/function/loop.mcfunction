# -------------------------------------------------------------------------------------------
# -- TRACKERS
# -------------------------------------------------------------------------------------------

execute if score #sklps.config.cutting sklps.config matches 1 as @a[tag=sklps] run function sklps:actions/tracker/cutting
execute if score #sklps.config.digging sklps.config matches 1 as @a[tag=sklps] run function sklps:actions/tracker/digging
execute if score #sklps.config.farming sklps.config matches 1 as @a[tag=sklps] run function sklps:actions/tracker/farming
execute if score #sklps.config.farming sklps.config matches 1 as @a[tag=sklps] run function sklps:actions/tracker/harvesting
execute if score #sklps.config.mining sklps.config matches 1 as @a[tag=sklps] run function sklps:actions/tracker/mining
execute if score #sklps.config.traveling sklps.config matches 1 as @a[tag=sklps] run function sklps:actions/tracker/traveling

# -------------------------------------------------------------------------------------------
# .. TIMERS
# -------------------------------------------------------------------------------------------

# .. 10 ticks
# -------------------------------------------------------------------------------------------
scoreboard players remove #sklps.chrono sklps.timer.10-ticks 1
execute if score #sklps.chrono sklps.timer.10-ticks matches ..-1 run scoreboard players set #sklps.chrono sklps.timer.10-ticks 10

# .. 10 seconds
# -------------------------------------------------------------------------------------------
scoreboard players remove #sklps.chrono sklps.timer.10-seconds 1
execute if score #sklps.chrono sklps.timer.10-seconds matches ..-1 run scoreboard players set #sklps.chrono sklps.timer.10-seconds 200

# .. 1 Minute
# -------------------------------------------------------------------------------------------
scoreboard players remove #sklps.chrono sklps.timer.1-minute 1
execute if score #sklps.chrono sklps.timer.1-minute matches ..-1 run scoreboard players set #sklps.chrono sklps.timer.1-minute 1200

# -------------------------------------------------------------------------------------------
# .. ADVANCEMENTS
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.advancements sklps.config matches 1 \
if score #sklps.chrono sklps.timer.1-minute matches 1 \
as @a[tag=sklps, tag=sklps.tag.welcome] run function sklps:advancements

# .. Debug
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.debug sklps.config matches 1 \
if score #sklps.config.debug.display sklps.config matches 1 \
as @a[tag=sklps, tag=sklps.tag.welcome] run function sklps:settings/debug/display

execute if score #sklps.config.debug sklps.config matches 0 \
run scoreboard objectives remove sklps.debug.display

execute if score #sklps.config.debug.display sklps.config matches 0 \
run scoreboard objectives remove sklps.debug.display