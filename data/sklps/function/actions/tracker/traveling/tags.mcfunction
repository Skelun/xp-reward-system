# -------------------------------------------------------------------------------------------
# .. SET TAGS
# -------------------------------------------------------------------------------------------

# .. Soul Speed Enchantment Buff || I 40% / II 50% / III 60%
execute as @a[tag=!sklps.tag.traveling.soul] if predicate sklps:movement/soul_speed run tag @s add sklps.tag.traveling.soul
execute as @a[tag=sklps.tag.traveling.soul] unless predicate sklps:movement/soul_speed run tag @s remove sklps.tag.traveling.soul

# .. Depth Strider Enchantment Buff || I +1/3 / II +2/3 / III Same as Walking Speed
execute as @a[tag=!sklps.tag.traveling.depth] if predicate sklps:movement/depth_strider run tag @s add sklps.tag.traveling.depth
execute as @a[tag=sklps.tag.traveling.depth] unless predicate sklps:movement/depth_strider run tag @s remove sklps.tag.traveling.depth

# .. Using Elytra
execute as @a[tag=!sklps.tag.traveling.elytra] if predicate sklps:movement/elytra run tag @s add sklps.tag.traveling.elytra
execute as @a[tag=sklps.tag.traveling.elytra] unless predicate sklps:movement/elytra run tag @s remove sklps.tag.traveling.elytra

# .. Dolphin's Grace
execute as @a[tag=!sklps.tag.traveling.dolphin] if predicate sklps:movement/dolphins_grace run tag @s add sklps.tag.traveling.dolphin
execute as @a[tag=sklps.tag.traveling.dolphin] unless predicate sklps:movement/dolphins_grace run tag @s remove sklps.tag.traveling.dolphin

# .. Speed Buff || 20% * lvl
execute as @a[tag=!sklps.tag.traveling.speed] if predicate sklps:movement/speed run tag @s add sklps.tag.traveling.speed
execute as @a[tag=sklps.tag.traveling.speed] unless predicate sklps:movement/speed run tag @s remove sklps.tag.traveling.speed

# .. Sprinting
execute as @s if predicate sklps:movement/sprinting run tag @s add sklps.tag.traveling.sprinting
execute as @s unless predicate sklps:movement/sprinting run tag @s remove sklps.tag.traveling.sprinting

# .. Rail Bugging
execute as @a[predicate=sklps:movement/riding_minecart] run function sklps:actions/tracker/traveling/special_cases/railbug

# .. Using Boat on Ice
execute as @a[predicate=sklps:movement/riding_boat] run function sklps:actions/tracker/traveling/special_cases/iceboating