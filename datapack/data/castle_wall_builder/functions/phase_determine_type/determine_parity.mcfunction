execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] store result score @s castle_wall_builder_x run data get entity @s Pos[0]
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] store result score @s castle_wall_builder_z run data get entity @s Pos[2]

execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run scoreboard players operation @s castle_wall_builder_parity = @s castle_wall_builder_x
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] run scoreboard players operation @s castle_wall_builder_parity += @s castle_wall_builder_z
scoreboard players operation @e[type=minecraft:marker,tag=castle_wall_builder_marker] castle_wall_builder_parity %= #2 castle_wall_builder_constants
