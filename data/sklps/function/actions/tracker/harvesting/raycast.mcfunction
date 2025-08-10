# --------------------------------------------------------------------------------------------
# .. Raycast
# --------------------------------------------------------------------------------------------

# .. Cast [3] rays at player eye level
# --------------------------------------------------------------------------------------------
execute at @s unless entity @e[tag=harvest.raycast.1,distance=..2] run summon marker ~ ~1.8 ~ {Tags:["harvest.raycast","harvest.raycast.1","harvest.new"]}
execute at @s unless entity @e[tag=harvest.raycast.2,distance=..2] run summon marker ~ ~1.475 ~ {Tags:["harvest.raycast","harvest.raycast.2","harvest.new"]}
execute at @s unless entity @e[tag=harvest.raycast.3,distance=..2] run summon marker ~ ~1.25 ~ {Tags:["harvest.raycast","harvest.raycast.3","harvest.new"]}

# .. Initialize rays
# --------------------------------------------------------------------------------------------
execute as @e[tag=harvest.new,distance=..3] run scoreboard players set @s sklps.harvesting.distance 0
execute as @e[tag=harvest.new,distance=..3] at @s run function sklps:actions/tracker/harvesting/raycast_step