scoreboard objectives add sklps.cutting.initial dummy

scoreboard players operation @s sklps.cutting.initial += @s sklps.cutting.axe.wooden
scoreboard players operation @s sklps.cutting.initial += @s sklps.cutting.axe.stone
scoreboard players operation @s sklps.cutting.initial += @s sklps.cutting.axe.iron
scoreboard players operation @s sklps.cutting.initial += @s sklps.cutting.axe.golden
scoreboard players operation @s sklps.cutting.initial += @s sklps.cutting.axe.diamond
scoreboard players operation @s sklps.cutting.initial += @s sklps.cutting.axe.netherite
scoreboard players operation @s sklps.cutting.detect = @s sklps.cutting.initial

scoreboard objectives remove sklps.cutting.initial