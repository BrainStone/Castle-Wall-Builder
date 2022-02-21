# Create structure block
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2}
# Copy structure_name from marker
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run data modify block ~ ~ ~ name set from entity @s data.structure_name
# Activate structure block
execute as @e[type=minecraft:marker,tag=castle_wall_builder_marker] at @s run setblock ~ ~1 ~ minecraft:redstone_block

# Cleanup
function castle_wall_builder:clean_marker
