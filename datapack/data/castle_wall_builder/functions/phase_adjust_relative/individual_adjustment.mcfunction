# Determine relative coords
function castle_wall_builder:utils/determine_rel_coords

# Different adjustment functions for different types
execute as @s[nbt={data:{type:"tower"}}] run function castle_wall_builder:phase_adjust_relative/adjust_tower
execute as @s[nbt={data:{type:"wall"}}] run function castle_wall_builder:phase_adjust_relative/adjust_wall

# Needs adjustment still, tp 1 up
tp @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] ~ ~1 ~
# Update neigbors
execute at @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] run function castle_wall_builder:phase_adjust_relative/update_neighbors
