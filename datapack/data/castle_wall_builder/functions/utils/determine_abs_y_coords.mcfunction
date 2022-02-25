# Save y coords in scoreboards
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] store result score @s castle_wall_builder_y run data get entity @s Pos[1]
