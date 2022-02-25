# Copy over coordinates (only x and z needed)
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run scoreboard players operation @s castle_wall_builder_rel_x = @s castle_wall_builder_x
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run scoreboard players operation @s castle_wall_builder_rel_z = @s castle_wall_builder_z

# Calculate difference to @s
scoreboard players operation @e[type=minecraft:marker,tag=castle_wall_builder_marker] castle_wall_builder_rel_x -= @s castle_wall_builder_x
scoreboard players operation @e[type=minecraft:marker,tag=castle_wall_builder_marker] castle_wall_builder_rel_z -= @s castle_wall_builder_z
