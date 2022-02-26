say Phase: adjust_relative

# Perform 5 move up steps
function castle_wall_builder:phase_adjust_relative/adjustment_step
function castle_wall_builder:phase_adjust_relative/adjustment_step
function castle_wall_builder:phase_adjust_relative/adjustment_step
function castle_wall_builder:phase_adjust_relative/adjustment_step
function castle_wall_builder:phase_adjust_relative/adjustment_step

# Next phase if there's nothing to move up
execute unless entity @e[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] run function castle_wall_builder:utils/next_phase
