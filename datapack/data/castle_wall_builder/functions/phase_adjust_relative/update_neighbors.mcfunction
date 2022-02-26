# Inform all lower neighbors that they should recheck (note the wall has moved one up, so all neighbors at the same height are now lower)
tag @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=..0,castle_wall_builder_rel_z=-5..5}] add castle_wall_builder_not_adjusted_marker
