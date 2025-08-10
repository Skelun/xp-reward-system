# --------------------------------------------------------------------------------------------
# .. Raycast step
# --------------------------------------------------------------------------------------------

# .. It's not new anymore, so it removes the tag
# --------------------------------------------------------------------------------------------
tag @s remove harvest.new

# .. Set rotation based on ray number
# --------------------------------------------------------------------------------------------
execute if entity @s[tag=harvest.raycast.1] run function sklps:actions/tracker/harvesting/set_rotation_1
execute if entity @s[tag=harvest.raycast.2] run function sklps:actions/tracker/harvesting/set_rotation_2
execute if entity @s[tag=harvest.raycast.3] run function sklps:actions/tracker/harvesting/set_rotation_3

# .. Take multiple steps per tick for faster detection
# --------------------------------------------------------------------------------------------
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0
function sklps:actions/tracker/harvesting/raycast_single_step
execute unless entity @s run return 0