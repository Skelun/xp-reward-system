# -------------------------------------------------------------------------------------------
# .. Remove any previous version and migrate scores
# -------------------------------------------------------------------------------------------
execute as @a[tag=sklps, tag=sklps_Welcome, tag=!sklps.tag.welcome] \
as @s run function sklps:version/transition
execute as @a[tag=sklps, tag=sklps_Welcome, tag=!sklps.tag.welcome] \
as @s run function sklps:version/uninstall_old
# execute as @a[tag=sklps, tag=sklps.tag.welcome] \
# as @s run function sklps:version/uninstall

# -------------------------------------------------------------------------------------------
# .. Creates the initial major SCOREBOARDS
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.config dummy
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.timer.10-ticks dummy
scoreboard objectives add sklps.timer.10-seconds dummy
scoreboard objectives add sklps.timer.1-minute dummy
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.cutting.delta dummy
scoreboard objectives add sklps.digging.delta dummy
scoreboard objectives add sklps.farming.delta dummy
scoreboard objectives add sklps.mining.delta dummy
scoreboard objectives add sklps.traveling.delta dummy

# -------------------------------------------------------------------------------------------
# .. Read the settings
# -------------------------------------------------------------------------------------------
execute as @a[tag=!sklps, tag=!sklps.tag.welcome] run function sklps:settings/default

# -------------------------------------------------------------------------------------------
# .. Start timers
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.chrono sklps.timer.10-ticks 10
scoreboard players set #sklps.chrono sklps.timer.10-seconds 200
scoreboard players set #sklps.chrono sklps.timer.1-minute 1200

# -------------------------------------------------------------------------------------------
# .. Adds a TAG to the player to start tracking their actions
# -------------------------------------------------------------------------------------------
execute as @a[tag=!sklps] run tag @s add sklps
execute as @a[tag=sklps] run tag @s add sklps.version.2-6-1

# -------------------------------------------------------------------------------------------
# .. Creates the ADVANCEMENTS tree
# -------------------------------------------------------------------------------------------
execute as @a[tag=sklps] run advancement grant @s only sklps:root
execute if score #sklps.config.cutting sklps.config matches 1 as @a[tag=sklps] \
run advancement grant @s until sklps:tree/cutting
execute if score #sklps.config.digging sklps.config matches 1 as @a[tag=sklps] \
run advancement grant @s until sklps:tree/digging
execute if score #sklps.config.farming sklps.config matches 1 as @a[tag=sklps] \
run advancement grant @s until sklps:tree/farming
execute if score #sklps.config.mining sklps.config matches 1 as @a[tag=sklps] \
run advancement grant @s until sklps:tree/mining
execute if score #sklps.config.traveling sklps.config matches 1 as @a[tag=sklps] \
run advancement grant @s until sklps:tree/traveling

# -------------------------------------------------------------------------------------------
# .. Define how actions will be tracked
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.cutting sklps.config matches 1 as @a[tag=sklps] \
run function sklps:actions/define/cutting
execute if score #sklps.config.digging sklps.config matches 1 as @a[tag=sklps] \
run function sklps:actions/define/digging
execute if score #sklps.config.farming sklps.config matches 1 as @a[tag=sklps] \
run function sklps:actions/define/farming
execute if score #sklps.config.farming sklps.config matches 1 as @a[tag=sklps] \
run function sklps:actions/define/harvesting
execute if score #sklps.config.mining sklps.config matches 1 as @a[tag=sklps] \
run function sklps:actions/define/mining
execute if score #sklps.config.traveling sklps.config matches 1 as @a[tag=sklps] \
run function sklps:actions/define/traveling

# -------------------------------------------------------------------------------------------
# .. Welcome message
# -------------------------------------------------------------------------------------------
execute as @a[tag=!sklps.tag.welcome] run tellraw @s \
    [\
        {"text":"Skelun's","bold": true, "color": "#EDD11C"},\
        {"text":" XP Reward System","bold": true,"color": "#873CE8"},\
        {"text":" v2.6.1","bold": false,"color": "white"}\
    ]
execute as @a[tag=!sklps.tag.welcome] run tag @s add sklps.tag.welcome