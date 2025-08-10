# -------------------------------------------------------------------------------------------
# .. SETTINGS [0 = DISABLED | 1 = ENABLED]
# -------------------------------------------------------------------------------------------

# .. XP [ x1 / x2 / x3 ]
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.config.xp-x1 sklps.config 1
scoreboard players set #sklps.config.xp-x2 sklps.config 0
scoreboard players set #sklps.config.xp-x3 sklps.config 0

# .. DISABLE/ENABLE Advancements
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.config.advancements sklps.config 1

# .. DISABLE/ENABLE XP earning methods
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.config.cutting sklps.config 1
scoreboard players set #sklps.config.digging sklps.config 1
scoreboard players set #sklps.config.farming sklps.config 1
scoreboard players set #sklps.config.harvesting sklps.config 1
scoreboard players set #sklps.config.mining sklps.config 1
scoreboard players set #sklps.config.traveling sklps.config 1

# .. Sets how many blocks until the XP is given
# -------------------------------------------------------------------------------------------
# .. For the default values I use a custom formula:
# .. https://docs.google.com/spreadsheets/d/1ja2UrwOSQU-HuBbu5GjIAst3xkR4ZdJTHHQBmAlbfy0/
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.deltas sklps.cutting.delta 60
scoreboard players set #sklps.deltas sklps.digging.delta 64
scoreboard players set #sklps.deltas sklps.farming.delta 72
scoreboard players set #sklps.deltas sklps.mining.delta 34
scoreboard players set #sklps.deltas sklps.traveling.delta 250

# .. Play sound when getting XP?
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.config.sound sklps.config 0

# .. DISABLE/ENABLE Debug Mode
# -------------------------------------------------------------------------------------------
scoreboard players set #sklps.config.debug sklps.config 0
scoreboard players set #sklps.config.debug.display sklps.config 0