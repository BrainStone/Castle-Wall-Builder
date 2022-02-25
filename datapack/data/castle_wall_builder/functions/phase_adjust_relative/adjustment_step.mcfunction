# Determine current y positions
function castle_wall_builder:utils/determine_abs_y_coords

# Adjust each wall that needs adjustment individually
execute as @e[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] at @s run function castle_wall_builder:phase_adjust_relative/individual_adjustment
