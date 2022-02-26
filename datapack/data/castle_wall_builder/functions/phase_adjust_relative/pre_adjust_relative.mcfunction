say Phase: pre_adjust_relative

# Tag entities to mark them for moving up (temporarily just towers)
tag @e[type=minecraft:marker,tag=castle_wall_builder_marker] add castle_wall_builder_not_adjusted_marker

# Next phase (in the same tick)
function castle_wall_builder:utils/advance_phase
