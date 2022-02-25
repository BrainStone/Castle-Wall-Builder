# Save y coords in scoreboards (x and z have already been saved earlier)
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] store result score @s castle_wall_builder_y run data get entity @s Pos[1]

# Calculate parity
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run scoreboard players operation @s castle_wall_builder_parity = @s castle_wall_builder_x
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run scoreboard players operation @s castle_wall_builder_parity += @s castle_wall_builder_z
scoreboard players operation @e[type=minecraft:marker,tag=castle_wall_builder_marker] castle_wall_builder_parity %= #2 castle_wall_builder_constants
