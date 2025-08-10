# -------------------------------------------------------------------------------------------
# .. Converts CENTIMETERS to BLOCKS
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 200
execute if entity @s[tag=sklps.tag.traveling.speed] run scoreboard players add @s sklps.traveling.convert 200

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.sprint.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block