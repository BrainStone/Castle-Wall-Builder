say Phase: adjust_to_ground

# Move them up
function castle_wall_builder:phase_adjust_to_ground/tp_up_if_not_free

# Next phase if there's nothing to move up
execute unless entity @e[type=minecraft:marker,tag=castle_wall_builder_not_free_marker] run function castle_wall_builder:utils/next_phase
