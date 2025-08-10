# -------------------------------------------------------------------------------------------
# .. COMPARE both Vec3 positions to tell if the player moved
# -------------------------------------------------------------------------------------------

execute as @a[tag=!sklps.tag.moving] unless score @s sklps.player.pos-x = @s sklps.player.mov-x run tag @s add sklps.tag.moving
execute as @a[tag=!sklps.tag.moving] unless score @s sklps.player.pos-y = @s sklps.player.mov-y run tag @s add sklps.tag.moving
execute as @a[tag=!sklps.tag.moving] unless score @s sklps.player.pos-z = @s sklps.player.mov-z run tag @s add sklps.tag.moving

execute as @a[tag=sklps.tag.moving] run function sklps:actions/tracker/action/traveling