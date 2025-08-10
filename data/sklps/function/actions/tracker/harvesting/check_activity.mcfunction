# --------------------------------------------------------------------------------------------
# .. If the player moves tags them as active
# -------------------------------------------------------------------------------------------

# .. Store current position to detect movement
# --------------------------------------------------------------------------------------------
execute store result score #current_x sklps.harvesting.activity.temp run data get entity @s Pos[0] 10
execute store result score #current_y sklps.harvesting.activity.temp run data get entity @s Pos[1] 10
execute store result score #current_z sklps.harvesting.activity.temp run data get entity @s Pos[2] 10

# .. Check if position changed from last tick
# --------------------------------------------------------------------------------------------
execute unless score #current_x sklps.harvesting.activity.temp = @s sklps.harvesting.last-x run tag @s add sklps.harvest.moved
execute unless score #current_y sklps.harvesting.activity.temp = @s sklps.harvesting.last-y run tag @s add sklps.harvest.moved
execute unless score #current_z sklps.harvesting.activity.temp = @s sklps.harvesting.last-z run tag @s add sklps.harvest.moved

# .. If player just moved, tag them as active and reset timer (600 ticks = 30 seconds)
# --------------------------------------------------------------------------------------------
execute if entity @s[tag=sklps.harvest.moved] run tag @s add sklps.harvest.active
execute if entity @s[tag=sklps.harvest.moved] run scoreboard players set @s sklps.harvesting.activity.timer 600

# .. Store current position for next tick comparison
# --------------------------------------------------------------------------------------------
scoreboard players operation @s sklps.harvesting.last-x = #current_x sklps.harvesting.activity.temp
scoreboard players operation @s sklps.harvesting.last-y = #current_y sklps.harvesting.activity.temp
scoreboard players operation @s sklps.harvesting.last-z = #current_z sklps.harvesting.activity.temp

# .. Remove the temporary movement tag
# --------------------------------------------------------------------------------------------
tag @s remove sklps.harvest.moved

# .. If player is not moving, count down the timer
# --------------------------------------------------------------------------------------------
execute unless entity @s[tag=sklps.harvest.moved] if score @s sklps.harvesting.activity.timer matches 1.. run scoreboard players remove @s sklps.harvesting.activity.timer 1

# .. Remove active tag when timer reaches 0
# --------------------------------------------------------------------------------------------
execute if score @s sklps.harvesting.activity.timer matches 0 run tag @s remove sklps.harvest.active