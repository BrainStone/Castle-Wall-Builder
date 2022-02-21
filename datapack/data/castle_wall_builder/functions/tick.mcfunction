execute as @e store result score @s castle_wall_builder_x run data get entity @s Pos[0]
execute as @e store result score @s castle_wall_builder_z run data get entity @s Pos[2]

execute as @e run scoreboard players operation @s castle_wall_builder_odd = @s castle_wall_builder_x
execute as @e run scoreboard players operation @s castle_wall_builder_odd += @s castle_wall_builder_z
scoreboard players operation @e castle_wall_builder_odd %= #two castle_wall_builder_constants
