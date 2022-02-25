# If there are no higher walls in proximity, we're done adjusting
execute unless entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=-5..5}] run tag @s remove castle_wall_builder_not_adjusted_marker

# Needs adjustment still, tp 1 up
execute at @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] run tp ~ ~1 ~
# Update neigbors
execute at @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] run function castle_wall_builder:phase_adjust_relative/update_lower
