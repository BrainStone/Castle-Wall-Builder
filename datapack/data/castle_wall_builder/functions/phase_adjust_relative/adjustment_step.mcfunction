# Determine current y positions
function castle_wall_builder:utils/determine_abs_y_coords

# Initialize to a low value
scoreboard players set #highest castle_wall_builder_y -2147483648

# Adjust the highest wall that needs adjustment individually
scoreboard players operation #highest castle_wall_builder_y > @e[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] castle_wall_builder_y
execute as @e[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] if score @s castle_wall_builder_y = #highest castle_wall_builder_y run tag @s add castle_wall_builder_highest_marker
execute as @e[type=minecraft:marker,tag=castle_wall_builder_highest_marker,limit=1] at @s run function castle_wall_builder:phase_adjust_relative/individual_adjustment
tag @e[type=minecraft:marker,tag=castle_wall_builder_highest_marker] remove castle_wall_builder_highest_marker
