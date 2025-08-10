# -------------------------------------------------------------------------------------------
# .. STORE first Vec3 position
# -------------------------------------------------------------------------------------------

execute store result score @s sklps.player.mov-x run data get entity @s Pos[0]
execute store result score @s sklps.player.mov-y run data get entity @s Pos[1]
execute store result score @s sklps.player.mov-z run data get entity @s Pos[2]