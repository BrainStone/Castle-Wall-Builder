# Create objectives
scoreboard objectives add castle_wall_builder_x dummy
scoreboard objectives add castle_wall_builder_y dummy
scoreboard objectives add castle_wall_builder_z dummy
scoreboard objectives add castle_wall_builder_rel_x dummy
scoreboard objectives add castle_wall_builder_rel_y dummy
scoreboard objectives add castle_wall_builder_rel_z dummy
scoreboard objectives add castle_wall_builder_parity dummy
scoreboard objectives add castle_wall_builder_storage dummy

# Number constants
scoreboard players set #2 castle_wall_builder_storage 2

# Phase constants
scoreboard players set #phase_determine_type castle_wall_builder_storage 1

scoreboard players set #pre_phase_adjust_to_ground castle_wall_builder_storage 2
scoreboard players set #phase_adjust_to_ground castle_wall_builder_storage 3

scoreboard players set #pre_phase_adjust_relative castle_wall_builder_storage 4
scoreboard players set #phase_adjust_relative castle_wall_builder_storage 5

scoreboard players set #phase_step_size castle_wall_builder_storage 6

scoreboard players set #phase_build_walls castle_wall_builder_storage 7

# Welcome message
tellraw @a ["",{"text":"Castle Wall Builder","bold":true,"underlined":true,"color":"dark_green"},{"text":" v0.2.4","underlined":true,"color":"dark_green"},"\n",{"text":"  by ","italic":true,"color":"dark_green"},{"text":"The_BrainStone","bold":true,"color":"dark_green"},"\n",{"text":"Loaded successfully!","color":"green"}]
