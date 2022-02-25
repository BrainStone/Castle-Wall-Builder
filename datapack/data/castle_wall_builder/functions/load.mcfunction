# Create objectives
scoreboard objectives add castle_wall_builder_x dummy
scoreboard objectives add castle_wall_builder_y dummy
scoreboard objectives add castle_wall_builder_z dummy
scoreboard objectives add castle_wall_builder_rel_x dummy
scoreboard objectives add castle_wall_builder_rel_y dummy
scoreboard objectives add castle_wall_builder_rel_z dummy
scoreboard objectives add castle_wall_builder_parity dummy
scoreboard objectives add castle_wall_builder_constants dummy

scoreboard players set #2 castle_wall_builder_constants 2

# Welcome message
tellraw @a ["",{"text":"Castle Wall Builder","bold":true,"underlined":true,"color":"dark_green"},{"text":" v0.1.5","underlined":true,"color":"dark_green"},"\n",{"text":"  by ","italic":true,"color":"dark_green"},{"text":"The_BrainStone","bold":true,"color":"dark_green"},"\n",{"text":"Loaded successfully!","color":"green"}]
