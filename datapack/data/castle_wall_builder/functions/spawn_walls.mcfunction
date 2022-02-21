# Determine parity
function castle_wall_builder:determine_parity

# Create structure block
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2}
# Determine structure
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{structure_type:"wall"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{structure_type:"wall"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{structure_type:"wall_1step"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a_1step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{structure_type:"wall_1step"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b_1step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{structure_type:"wall_2step"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a_2step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{structure_type:"wall_2step"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b_2step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{structure_type:"wall_5step"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a_5step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{structure_type:"wall_5step"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b_5step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{structure_type:"tower"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:tower_a",posX:-3,posZ:-3}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{structure_type:"tower"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:tower_b",posX:-3,posZ:-3}
# Activate structure block
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run setblock ~ ~1 ~ minecraft:redstone_block

# Cleanup
function castle_wall_builder:clean_marker
