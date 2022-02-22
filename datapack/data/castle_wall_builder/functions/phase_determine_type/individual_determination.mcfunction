# Determine relative coordinates
function castle_wall_builder:phase_determine_type/determine_rel_coords

# This allows us to know if it hasn't been found yet
data merge entity @s {data:{type:"unknown",rotation:-1}}

# If there's a corner, place a tower
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_z=0}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=5}] run data merge entity @s {data:{type:"tower",rotation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=5}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"tower",rotation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_z=0}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=-5}] run data merge entity @s {data:{type:"tower",rotation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=-5}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"tower",rotation:0}}

# Walls with steps
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=5,castle_wall_builder_rel_z=-5..5}] run data merge entity @s {data:{type:"wall_5step"}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=2,castle_wall_builder_rel_z=-5..5}] run data merge entity @s {data:{type:"wall_2step"}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5..5,castle_wall_builder_rel_y=1,castle_wall_builder_rel_z=-5..5}] run data merge entity @s {data:{type:"wall_1step"}}
# Determine rotation for these walls
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{rotation:0}}
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=5}] run data merge entity @s {data:{rotation:1}}
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{rotation:2}}
execute as @s[nbt={data:{rotation:-1}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_y=1..5,castle_wall_builder_rel_z=-5}] run data merge entity @s {data:{rotation:3}}

# Determine wall rotation
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"wall",rotation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=5}] run data merge entity @s {data:{type:"wall",rotation:1}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"wall",rotation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=-5}] run data merge entity @s {data:{type:"wall",rotation:1}}
