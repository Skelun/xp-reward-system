scoreboard objectives add sklps.farming.initial dummy

scoreboard players operation @s sklps.farming.initial += @s sklps.farming.hoe.wooden
scoreboard players operation @s sklps.farming.initial += @s sklps.farming.hoe.stone
scoreboard players operation @s sklps.farming.initial += @s sklps.farming.hoe.iron
scoreboard players operation @s sklps.farming.initial += @s sklps.farming.hoe.golden
scoreboard players operation @s sklps.farming.initial += @s sklps.farming.hoe.diamond
scoreboard players operation @s sklps.farming.initial += @s sklps.farming.hoe.netherite
scoreboard players operation @s sklps.farming.detect = @s sklps.farming.initial

scoreboard objectives remove sklps.farming.initial