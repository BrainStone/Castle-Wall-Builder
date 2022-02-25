# Determine parity and y coords for more magic!
function castle_wall_builder:phase_determine_step_size/determine_parity
function castle_wall_builder:utils/determine_abs_y_coords

# We only need to do this for walls
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,nbt={data:{type:"wall"}}] run function castle_wall_builder:phase_determine_step_size/individual_determination
