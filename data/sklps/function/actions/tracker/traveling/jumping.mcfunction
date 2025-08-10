# -------------------------------------------------------------------------------------------
# .. Converts CENTIMETERS to BLOCKS
# -------------------------------------------------------------------------------------------

# .. Compensates if the player is sprinting or if it has Speed buff
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.traveling.convert 50
execute if entity @s[tag=sklps.tag.traveling.sprinting] run scoreboard players add @s sklps.traveling.convert 50
execute if entity @s[tag=sklps.tag.traveling.speed] run scoreboard players add @s sklps.traveling.convert 100

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.jump.jumps
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block