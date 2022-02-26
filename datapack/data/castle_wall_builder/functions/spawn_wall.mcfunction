# Cleanup before, just in case
function castle_wall_builder:utils/clean_marker

execute at @e[type=minecraft:armor_stand,tag=castle_wall_builder_base_marker] run summon minecraft:marker ~ ~ ~ {Tags:["castle_wall_builder_marker"]}
kill @e[type=minecraft:armor_stand,tag=castle_wall_builder_base_marker]

scoreboard players operation State castle_wall_builder_storage = #phase_determine_type castle_wall_builder_storage

# function castle_wall_builder:phase_determine_type/determine_type
# function castle_wall_builder:phase_adjust_to_ground/adjust_to_ground
# function castle_wall_builder:phase_adjust_relative/adjust_relative
# function castle_wall_builder:phase_determine_step_size/determine_step_size
# function castle_wall_builder:phase_build_walls/spawn_walls
# # Cleanup
# function castle_wall_builder:utils/clean_marker
