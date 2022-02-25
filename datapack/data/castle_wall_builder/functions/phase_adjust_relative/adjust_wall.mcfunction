# Ensure there aren't two higher walls
execute at @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker,nbt={data:{orientation:0}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=0}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=0}] run tag @s add castle_wall_builder_force_adjustment_marker
execute at @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker,nbt={data:{orientation:1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=-5}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=5}] run tag @s add castle_wall_builder_force_adjustment_marker

# Check for steps of the right height (if only 1 wall is higher)
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:0}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=1,castle_wall_builder_rel_z=0}] run tag @s remove castle_wall_builder_not_adjusted_marker
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1,castle_wall_builder_rel_z=-5..5}] run tag @s remove castle_wall_builder_not_adjusted_marker
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:0}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=2,castle_wall_builder_rel_z=0}] run tag @s remove castle_wall_builder_not_adjusted_marker
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=2,castle_wall_builder_rel_z=-5..5}] run tag @s remove castle_wall_builder_not_adjusted_marker
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:0}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=5,castle_wall_builder_rel_z=0}] run tag @s remove castle_wall_builder_not_adjusted_marker
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=5,castle_wall_builder_rel_z=-5..5}] run tag @s remove castle_wall_builder_not_adjusted_marker
# Check if a neighbor is the same height and no other neighbor is higher
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:0}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=0,castle_wall_builder_rel_z=0}] unless entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=0}] run tag @s remove castle_wall_builder_not_adjusted_marker
execute at @s[type=minecraft:marker,tag=!castle_wall_builder_force_adjustment_marker,nbt={data:{orientation:1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=0,castle_wall_builder_rel_z=-5..5}] unless entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..,castle_wall_builder_rel_z=-5..5}] run tag @s remove castle_wall_builder_not_adjusted_marker

# Remove temporary tag for both walls
tag @s[type=minecraft:marker,tag=castle_wall_builder_force_adjustment_marker] remove castle_wall_builder_force_adjustment_marker

# Needs adjustment still, tp 1 up
tp @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] ~ ~1 ~
# Update neigbors
execute at @s[type=minecraft:marker,tag=castle_wall_builder_not_adjusted_marker] run function castle_wall_builder:phase_adjust_relative/update_neighbors