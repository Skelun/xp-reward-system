# -------------------------------------------------------------------------------------------
# .. Converts CENTIMETERS to BLOCKS
# -------------------------------------------------------------------------------------------

# .. Compensates if the player is Sprinting, has speed increasing Enchantments
# .. or speed increasing Buffs
# -------------------------------------------------------------------------------------------
scoreboard players set @s sklps.traveling.convert 50
execute if entity @s[tag=sklps.tag.traveling.sprinting] run scoreboard players add @s sklps.traveling.convert 30
execute if entity @s[tag=sklps.tag.traveling.depth] run scoreboard players add @s sklps.traveling.convert 50
execute if entity @s[tag=sklps.tag.traveling.soul] run scoreboard players add @s sklps.traveling.convert 50
execute if entity @s[tag=sklps.tag.traveling.speed] run scoreboard players add @s sklps.traveling.convert 100
execute if entity @s[tag=sklps.tag.traveling.dolphin] run scoreboard players add @s sklps.traveling.convert 150
execute if entity @s[tag=sklps.tag.traveling.elytra] run scoreboard players add @s sklps.traveling.convert 950

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.low1.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.low2.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block

scoreboard players operation @s sklps.traveling.convert_block = @s sklps.traveling.low3.cm
scoreboard players operation @s sklps.traveling.convert_block /= @s sklps.traveling.convert
scoreboard players operation @s sklps.traveling.count.temp += @s sklps.traveling.convert_block
