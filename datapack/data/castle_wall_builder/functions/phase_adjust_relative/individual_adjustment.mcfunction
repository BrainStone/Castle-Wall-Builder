# Determine relative coords
function castle_wall_builder:utils/determine_rel_coords

# Different adjustment functions for different types
execute as @s[nbt={data:{type:"tower"}}] run function castle_wall_builder:phase_adjust_relative/adjust_tower
execute as @s[nbt={data:{type:"wall"}}] run function castle_wall_builder:phase_adjust_relative/adjust_wall
