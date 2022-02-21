# Create objectives
scoreboard objectives add castle_wall_builder_x dummy
scoreboard objectives add castle_wall_builder_z dummy
scoreboard objectives add castle_wall_builder_odd dummy
scoreboard objectives add castle_wall_builder_constants dummy

scoreboard players set #two castle_wall_builder_constants 2

# Just visualize it
scoreboard objectives setdisplay sidebar castle_wall_builder_odd
