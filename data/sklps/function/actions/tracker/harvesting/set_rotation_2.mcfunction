# .. Set the entity rotation the same as the ray casting player
# -------------------------------------------------------------------------------------------
data modify entity @s Rotation set from entity @p Rotation

# .. Gets the player's pitch and yaw
# -------------------------------------------------------------------------------------------
execute store result score #player_yaw sklps.harvesting.temp run data get entity @s Rotation[0] 1
execute store result score #player_pitch sklps.harvesting.temp run data get entity @s Rotation[1] 1

# .. Slightly changes the angles to cover more areas
# -------------------------------------------------------------------------------------------
execute store result entity @s Rotation[0] float 1 run scoreboard players remove #player_yaw sklps.harvesting.temp 5
execute store result entity @s Rotation[1] float 1 run scoreboard players add #player_pitch sklps.harvesting.temp 1