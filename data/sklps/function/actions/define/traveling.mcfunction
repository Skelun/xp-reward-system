# -------------------------------------------------------------------------------------------
# .. DEFINES: Traveling
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.player.pos-x dummy
scoreboard objectives add sklps.player.pos-y dummy
scoreboard objectives add sklps.player.pos-z dummy
scoreboard objectives add sklps.player.mov-x dummy
scoreboard objectives add sklps.player.mov-y dummy
scoreboard objectives add sklps.player.mov-z dummy

scoreboard objectives add sklps.traveling.level dummy
scoreboard players set @a sklps.traveling.level 1
scoreboard objectives add sklps.traveling.xp dummy
scoreboard objectives add sklps.traveling.Initial dummy
scoreboard objectives add sklps.traveling.count dummy {"text":"Traveling","color":"#596ac9"}
scoreboard objectives add sklps.traveling.count.temp dummy
scoreboard objectives add sklps.traveling.convert dummy
scoreboard objectives add sklps.traveling.convert_block dummy

# .. @ Lower (Lower than 4.0 m/s)
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.traveling.low1.cm minecraft.custom:swim_one_cm
scoreboard objectives add sklps.traveling.low2.cm minecraft.custom:walk_on_water_one_cm
scoreboard objectives add sklps.traveling.low3.cm minecraft.custom:walk_under_water_one_cm

# .. @ Normal Speed (Between 4.0 m/s and 7 m/s)
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.traveling.normal1.cm minecraft.custom:walk_one_cm
scoreboard objectives add sklps.traveling.normal2.cm minecraft.custom:pig_one_cm
scoreboard objectives add sklps.traveling.normal3.cm minecraft.custom:strider_one_cm
scoreboard objectives add sklps.traveling.normal4.cm minecraft.custom:happy_ghast_one_cm

# .. @ Faster Speed (Between 7.0 m/s and 30.0 m/s)
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.traveling.fast1.cm minecraft.custom:minecart_one_cm
scoreboard objectives add sklps.traveling.fast2.cm minecraft.custom:horse_one_cm

# .. @ Fastest (Faster than 30.0 m/s)
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.traveling.max.cm minecraft.custom:aviate_one_cm

# .. @ Special Cases
# -------------------------------------------------------------------------------------------
scoreboard objectives add sklps.traveling.sprint.cm minecraft.custom:sprint_one_cm
scoreboard objectives add sklps.traveling.boat.cm minecraft.custom:boat_one_cm
scoreboard objectives add sklps.traveling.jump.jumps minecraft.custom:jump

# .. Sets Initial Value for Traveled Blocks
# -------------------------------------------------------------------------------------------
function sklps:actions/define/initial/traveled

# .. Sets Initial Ceiling For Leveling
# -------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.traveling.xp = @s sklps.traveling.Initial
scoreboard players operation @s sklps.traveling.xp += #sklps.deltas sklps.traveling.delta