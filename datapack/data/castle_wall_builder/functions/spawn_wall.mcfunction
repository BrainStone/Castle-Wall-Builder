# Cleanup before, just in case
function castle_wall_builder:clean_marker

execute at @e[type=minecraft:armor_stand,tag=castle_wall_builder_base_marker] run summon minecraft:marker ~ ~5 ~ {Tags:["castle_wall_builder_marker"]}
kill @e[type=minecraft:armor_stand,tag=castle_wall_builder_base_marker]

function castle_wall_builder:phase_determine_type/determine_type
function castle_wall_builder:phase_build_walls/spawn_walls
# Cleanup
function castle_wall_builder:clean_marker
