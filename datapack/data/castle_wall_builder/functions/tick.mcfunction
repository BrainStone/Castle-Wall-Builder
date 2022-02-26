# Execute phase functions
execute if score State castle_wall_builder_storage = #phase_determine_type castle_wall_builder_storage run function castle_wall_builder:phase_determine_type/determine_type

execute if score State castle_wall_builder_storage = #pre_phase_adjust_to_ground castle_wall_builder_storage run function castle_wall_builder:phase_adjust_to_ground/pre_adjust_to_ground
execute if score State castle_wall_builder_storage = #phase_adjust_to_ground castle_wall_builder_storage run function castle_wall_builder:phase_adjust_to_ground/adjust_to_ground

execute if score State castle_wall_builder_storage = #pre_phase_adjust_relative castle_wall_builder_storage run function castle_wall_builder:phase_adjust_relative/pre_adjust_relative
execute if score State castle_wall_builder_storage = #phase_adjust_relative castle_wall_builder_storage run function castle_wall_builder:phase_adjust_relative/adjust_relative

execute if score State castle_wall_builder_storage = #phase_step_size castle_wall_builder_storage run function castle_wall_builder:phase_determine_step_size/determine_step_size

execute if score State castle_wall_builder_storage = #phase_build_walls castle_wall_builder_storage run function castle_wall_builder:phase_build_walls/spawn_walls

# Marker visualization
execute as @e[type=minecraft:marker] at @s run particle minecraft:happy_villager ~-0.1 ~-0.1 ~-0.1 0.2 0.2 0.2 1 1 force
