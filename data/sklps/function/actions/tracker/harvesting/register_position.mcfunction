# -------------------------------------------------------------------------------------------
# .. Register the position of crop that will be harvested
# -------------------------------------------------------------------------------------------

# .. Only create marker if none already exist nearby
# -------------------------------------------------------------------------------------------
execute unless entity @e[type=marker,tag=harvest.position,distance=..0.5] run summon marker ~ ~ ~ {Tags:["harvest.position"]}
execute as @e[type=marker,tag=harvest.position,distance=..0.1,limit=1,sort=nearest] run scoreboard players set @s sklps.harvesting.timer 0

# .. Store the player UUID who triggered this
# -------------------------------------------------------------------------------------------
execute as @e[type=marker,tag=harvest.position,distance=..0.1,limit=1,sort=nearest] run data modify entity @s Owner set from entity @p UUID

# .. Tag the raycast as completed and kill it
# -------------------------------------------------------------------------------------------
tag @s add harvest.hit
kill @s