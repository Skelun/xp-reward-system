# -------------------------------------------------------------------------------------------
# .. GIVES XP
# -------------------------------------------------------------------------------------------

# .. DEFAULTS: https://docs.google.com/spreadsheets/d/1ja2UrwOSQU-HuBbu5GjIAst3xkR4ZdJTHHQBmAlbfy0/edit?usp=sharing
# -------------------------------------------------------------------------------------------
# .. To get from 0 to level 30 the vanilla way you have to:
# ..
# .. Kill 300 Zombies; or
# .. Mine around 215 to 503 diamond Ores; or
# .. Smelt 2,152 raw Iron/Gold/Copper
# ..
# -------------------------------------------------------------------------------------------
# .. To get from 0 to level 30 using this data pack (with 'default values')
# .. you have to do one of the following:
# ..
# .. - Cut 1110 Oak Logs (~17 stacks)
# .. - Dig 4736 Dirt Blocks (~74 stacks)
# .. - Farm 1776 Crops (~27 stacks)
# .. - Mine 2516 Stone blocks (~39 stacks)
# .. - Walk 2146 Blocks (~157 chunks)
# ..
# -------------------------------------------------------------------------------------------
# .. It seems a lot, but consider that you will be doing all these actions
# .. that will give you XP, and everything piles up
# -------------------------------------------------------------------------------------------

scoreboard objectives add sklps.level.current dummy
execute store result score @s sklps.level.current run experience query @s levels

# -------------------------------------------------------------------------------------------
# .. The last number is the amount of XP you'll recieve based on your level
# .. You can set a custom amount if you wish
# .. Just edit LAST NUMBER of the following lines
# -------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------
# .. Normal XP Amount
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.xp-x1 sklps.config matches 1 \
if score @s sklps.level.current matches 0..9 run experience add @s 12
execute if score #sklps.config.xp-x1 sklps.config matches 1 \
if score @s sklps.level.current matches 10..19 run experience add @s 15
execute if score #sklps.config.xp-x1 sklps.config matches 1 \
if score @s sklps.level.current matches 20..29 run experience add @s 21
execute if score #sklps.config.xp-x1 sklps.config matches 1 \
if score @s sklps.level.current matches 30..69 run experience add @s 33
execute if score @s sklps.level.current matches 70.. run experience add @s 57
# -------------------------------------------------------------------------------------------
# .. Double XP Amount
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.xp-x2 sklps.config matches 1 \
if score @s sklps.level.current matches 0..9 run experience add @s 24
execute if score #sklps.config.xp-x2 sklps.config matches 1 \
if score @s sklps.level.current matches 10..19 run experience add @s 30
execute if score #sklps.config.xp-x2 sklps.config matches 1 \
if score @s sklps.level.current matches 20..29 run experience add @s 41
execute if score #sklps.config.xp-x2 sklps.config matches 1 \
if score @s sklps.level.current matches 30..69 run experience add @s 66
execute if score @s sklps.level.current matches 70.. run experience add @s 114
# -------------------------------------------------------------------------------------------
# .. Triple XP Amount
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.xp-x3 sklps.config matches 1 \
if score @s sklps.level.current matches 0..9 run experience add @s 36
execute if score #sklps.config.xp-x3 sklps.config matches 1 \
if score @s sklps.level.current matches 10..19 run experience add @s 45
execute if score #sklps.config.xp-x3 sklps.config matches 1 \
if score @s sklps.level.current matches 20..29 run experience add @s 63
execute if score #sklps.config.xp-x3 sklps.config matches 1 \
if score @s sklps.level.current matches 30..69 run experience add @s 99
execute if score @s sklps.level.current matches 70.. run experience add @s 171
# -------------------------------------------------------------------------------------------

# -------------------------------------------------------------------------------------------
# .. Sound feedback
# -------------------------------------------------------------------------------------------
execute if score #sklps.config.sound sklps.config matches 1 run execute at @s run playsound minecraft:block.amethyst_block.fall weather @s ~ ~ ~ 0.3 2
execute if score #sklps.config.sound sklps.config matches 1 run execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 0.1 1.8

scoreboard players reset @s sklps.level.current
scoreboard objectives remove sklps.level.current