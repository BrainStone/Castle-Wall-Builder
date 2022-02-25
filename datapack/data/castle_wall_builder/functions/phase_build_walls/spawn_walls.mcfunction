# Create structure block
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posY:0}
# Determine structure
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{type:"wall",step_size:0}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{type:"wall",step_size:0}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{type:"wall",step_size:1}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a_1step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{type:"wall",step_size:1}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b_1step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{type:"wall",step_size:2}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a_2step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{type:"wall",step_size:2}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b_2step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{type:"wall",step_size:5}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_a_5step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{type:"wall",step_size:5}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:wall_b_5step"}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=0},nbt={data:{type:"tower"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:tower_a",rotation:"NONE",posX:-3,posZ:-3}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,scores={castle_wall_builder_parity=1},nbt={data:{type:"tower"}}] at @s run data merge block ~ ~ ~ {name:"castle_wall_builder:tower_b",rotation:"NONE",posX:-3,posZ:-3}
# Determine rotation and offset for walls
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,nbt={data:{rotation:0}}] at @s run data merge block ~ ~ ~ {rotation:"NONE",posX:-2,posZ:-2}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,nbt={data:{rotation:1}}] at @s run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:2,posZ:-2}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,nbt={data:{rotation:2}}] at @s run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX:2,posZ:2}
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker,nbt={data:{rotation:3}}] at @s run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posX:-2,posZ:2}

# Activate structure block
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run setblock ~ ~1 ~ minecraft:redstone_block
