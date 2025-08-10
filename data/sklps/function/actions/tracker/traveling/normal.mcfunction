# -------------------------------------------------------------------------------------------
# .. Converts CENTIMETERS to BLOCKS
# -------------------------------------------------------------------------------------------

scoreboard players set @s sklps.traveling.convert 100
execute if entity @e[tag=sklps.tag.traveling.soul] run scoreboard players add @s sklps.traveling.convert 50
execute if entity @e[tag=sklps.tag.traveling.speed] run scoreboard players add @s sklps.traveling.convert 100

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal2.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal3.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.normal4.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
