# Fill with air
execute at @e[type=minecraft:marker,tag=castle_wall_builder_old_marker,nbt=!{data:{type:"tower"}}] run fill ~-2 ~ ~-2 ~2 ~9 ~2 minecraft:air
execute at @e[type=minecraft:marker,tag=castle_wall_builder_old_marker,nbt={data:{type:"tower"}}] run fill ~-3 ~ ~-3 ~3 ~9 ~3 minecraft:air
# Remove markers
kill @e[type=minecraft:marker,tag=castle_wall_builder_old_marker]
