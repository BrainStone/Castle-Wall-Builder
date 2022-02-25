# Determine relative coordinates
function castle_wall_builder:phase_determine_step_size/determine_rel_coords

# This allows us to know if it hasn't been found yet
data merge entity @s {data:{step_size:-1,rotation:-1}}

# Determine wall step size steps
execute as @s[nbt={data:{step_size:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=5,castle_wall_builder_rel_z=-5..5}] run data merge entity @s {data:{step_size:5}}
execute as @s[nbt={data:{step_size:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=2,castle_wall_builder_rel_z=-5..5}] run data merge entity @s {data:{step_size:2}}
execute as @s[nbt={data:{step_size:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=1,castle_wall_builder_rel_z=-5..5}] run data merge entity @s {data:{step_size:1}}
execute as @s[nbt={data:{step_size:-1}}] run data merge entity @s {data:{step_size:0}}
# Determine wall rotation
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{rotation:0}}
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=5}] run data merge entity @s {data:{rotation:1}}
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{rotation:2}}
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=-5}] run data merge entity @s {data:{rotation:3}}
# Fallback
execute as @s[nbt={data:{rotation:-1}}] run data merge entity @s {data:{rotation:0}}
