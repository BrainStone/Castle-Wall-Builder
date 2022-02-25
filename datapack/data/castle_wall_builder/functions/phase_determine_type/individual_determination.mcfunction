# Determine relative coordinates
function castle_wall_builder:phase_determine_type/determine_rel_coords

# This allows us to know if it hasn't been found yet
data merge entity @s {data:{type:"unknown",orientation:-1}}

# If there's a corner, place a tower
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_z=0}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=5}] run data merge entity @s {data:{type:"tower",orientation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=5}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"tower",orientation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_z=0}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=-5}] run data merge entity @s {data:{type:"tower",orientation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=-5}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"tower",orientation:0}}

# Determine wall rotation
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"wall",orientation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=5}] run data merge entity @s {data:{type:"wall",orientation:1}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=-5,castle_wall_builder_rel_z=0}] run data merge entity @s {data:{type:"wall",orientation:0}}
execute as @s[nbt={data:{type:"unknown"}}] if entity @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_rel_x=0,castle_wall_builder_rel_z=-5}] run data merge entity @s {data:{type:"wall",orientation:1}}
