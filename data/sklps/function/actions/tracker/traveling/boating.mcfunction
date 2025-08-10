# -------------------------------------------------------------------------------------------
# .. Converts CENTIMETERS to BLOCKS
# -------------------------------------------------------------------------------------------

# .. If the ground is some kind of Ice Block it will reduce the XP gain
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.traveling.convert 200
execute if entity @s[tag=sklps.tag.traveling.ice_boating] run scoreboard players add @s sklps.traveling.convert 800

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.boat.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block