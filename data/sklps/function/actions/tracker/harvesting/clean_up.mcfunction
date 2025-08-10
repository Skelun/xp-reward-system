# -------------------------------------------------------------------------------------------
# .. Clean up things
# -------------------------------------------------------------------------------------------

execute at @s as @p[distance=..10] run scoreboard players add @s sklps.harvesting.count 1

# .. Find and clean up the player who triggered this harvest
# -------------------------------------------------------------------------------------------
execute store result score #temp_uuid0 sklps.harvesting.temp run data get entity @s Owner[0]
execute store result score #temp_uuid1 sklps.harvesting.temp run data get entity @s Owner[1]
execute store result score #temp_uuid2 sklps.harvesting.temp run data get entity @s Owner[2]
execute store result score #temp_uuid3 sklps.harvesting.temp run data get entity @s Owner[3]

# .. Remove tags from the triggering player
# -------------------------------------------------------------------------------------------
execute as @a store result score @s sklps.harvesting.uuid0 run data get entity @s UUID[0]
execute as @a store result score @s sklps.harvesting.uuid1 run data get entity @s UUID[1]
execute as @a store result score @s sklps.harvesting.uuid2 run data get entity @s UUID[2]
execute as @a store result score @s sklps.harvesting.uuid3 run data get entity @s UUID[3]

execute as @a if score @s sklps.harvesting.uuid0 = #temp_uuid0 sklps.harvesting.temp \
if score @s sklps.harvesting.uuid1 = #temp_uuid1 sklps.harvesting.temp \
if score @s sklps.harvesting.uuid2 = #temp_uuid2 sklps.harvesting.temp \
if score @s sklps.harvesting.uuid3 = #temp_uuid3 sklps.harvesting.temp \
run tag @s remove sklps.standing_on_farmland

# .. Kill the position marker
# -------------------------------------------------------------------------------------------
kill @s

# .. Clean up any remaining position markers at this location
# -------------------------------------------------------------------------------------------
execute at @s run kill @e[type=marker,tag=harvest.position,distance=..0.5]