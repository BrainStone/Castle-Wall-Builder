# Cleanup before, just in case
function castle_wall_builder:clean_marker

summon minecraft:marker -12 -8 18 {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a_1step"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~1 ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b_1step"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~1 ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a_2step"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~2 ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b_2step"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~2 ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a_5step"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~5 ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b_5step"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~5 ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_a"}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{structure_name:"castle_wall_builder:wall_b"}}

function castle_wall_builder:spawn_walls
