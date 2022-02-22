# Determine parity and safe coords in scoreboards for more magic!
function castle_wall_builder:phase_determine_type/determine_parity

execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run function castle_wall_builder:phase_determine_type/individual_determination
