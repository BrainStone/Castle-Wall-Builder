# Cleanup before, just in case
function castle_wall_builder:utils/clean_marker

execute at @e[type=minecraft:armor_stand,tag=castle_wall_builder_base_marker] run summon minecraft:marker ~ ~ ~ {Tags:["castle_wall_builder_marker"]}
kill @e[type=minecraft:armor_stand,tag=castle_wall_builder_base_marker]

# Start wall_building
scoreboard players operation State castle_wall_builder_storage = #phase_determine_type castle_wall_builder_storage
