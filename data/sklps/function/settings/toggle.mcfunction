$scoreboard players operation #temp sklps.config = #sklps.config.$(toggle) sklps.config
$execute if score #temp sklps.config matches 0 run tellraw @s [{"text":"$(text)","bold":true},{"text":" was enabled","bold":true,"color":"green"}]
$execute if score #temp sklps.config matches 1 run tellraw @s [{"text":"$(text)","bold":true},{"text":" was disabled","bold":true,"color":"red"}]
$execute if score #temp sklps.config matches 0 run scoreboard players set #sklps.config.$(toggle) sklps.config 1
$execute if score #temp sklps.config matches 1 run scoreboard players set #sklps.config.$(toggle) sklps.config 0