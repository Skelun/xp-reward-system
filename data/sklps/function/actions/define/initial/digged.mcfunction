scoreboard objectives add sklps.digging.initial dummy

scoreboard players operation @s sklps.digging.initial += @s sklps.digging.shovel.wooden
scoreboard players operation @s sklps.digging.initial += @s sklps.digging.shovel.stone
scoreboard players operation @s sklps.digging.initial += @s sklps.digging.shovel.iron
scoreboard players operation @s sklps.digging.initial += @s sklps.digging.shovel.golden
scoreboard players operation @s sklps.digging.initial += @s sklps.digging.shovel.diamond
scoreboard players operation @s sklps.digging.initial += @s sklps.digging.shovel.netherite
scoreboard players operation @s sklps.digging.detect = @s sklps.digging.initial

scoreboard objectives remove sklps.digging.initial