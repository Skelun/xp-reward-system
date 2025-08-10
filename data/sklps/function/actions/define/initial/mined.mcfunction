scoreboard objectives add sklps.mining.initial dummy

scoreboard players operation @s sklps.mining.initial += @s sklps.mining.pickaxe.wooden
scoreboard players operation @s sklps.mining.initial += @s sklps.mining.pickaxe.stone
scoreboard players operation @s sklps.mining.initial += @s sklps.mining.pickaxe.iron
scoreboard players operation @s sklps.mining.initial += @s sklps.mining.pickaxe.golden
scoreboard players operation @s sklps.mining.initial += @s sklps.mining.pickaxe.diamond
scoreboard players operation @s sklps.mining.initial += @s sklps.mining.pickaxe.netherite
scoreboard players operation @s sklps.mining.detect = @s sklps.mining.initial

scoreboard objectives remove sklps.mining.initial