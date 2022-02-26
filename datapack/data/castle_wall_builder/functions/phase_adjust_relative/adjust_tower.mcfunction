# If there are no higher walls in proximity, we're done adjusting
execute unless entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=-5..5}] run tag @s remove castle_wall_builder_not_adjusted_marker
