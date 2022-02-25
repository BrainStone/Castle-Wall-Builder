# Determine parity and safe coords in scoreboards for more magic!
function castle_wall_builder:phase_determine_step_size/determine_parity

# We only need to do this for walls
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,nbt={data:{type:"wall"}}] run function castle_wall_builder:phase_determine_step_size/individual_determination
