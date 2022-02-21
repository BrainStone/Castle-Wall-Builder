# Cleanup before, just in case
function castle_wall_builder:clean_marker

summon minecraft:marker -12 -7 18 {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"tower",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~-1 ~-5 {Tags:["castle_wall_builder_marker"],data:{type:"wall_1step",rotation:1}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:1}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:1}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"],data:{type:"wall_2step",rotation:1}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~2 ~5 {Tags:["castle_wall_builder_marker"],data:{type:"wall_2step",rotation:1}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~-2 ~-20 {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~10 ~-2 ~-20 {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~15 ~-2 ~-20 {Tags:["castle_wall_builder_marker"],data:{type:"tower",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall_1step",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~1 ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall_1step",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~1 ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall_2step",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~2 ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall_2step",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~2 ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall_5step",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~5 ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall_5step",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~5 ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"],data:{type:"wall",rotation:0}}

function castle_wall_builder:spawn_walls
