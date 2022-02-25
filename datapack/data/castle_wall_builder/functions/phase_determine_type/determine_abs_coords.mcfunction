# Save coords in scoreboards (only x and z needed)
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] store result score @s castle_wall_builder_x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] store result score @s castle_wall_builder_z run data get entity @s Pos[2]
