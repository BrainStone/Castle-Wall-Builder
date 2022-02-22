# Cleanup before, just in case
function castle_wall_builder:clean_marker

summon minecraft:marker -12 -7 18 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~-1 ~-5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~2 ~5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~2 ~5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~ ~ ~5 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~-4 ~-30 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~10 ~-4 ~-30 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~15 ~-4 ~-30 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~15 ~-4 ~-25 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~15 ~-4 ~-20 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~20 ~-4 ~-30 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~25 ~-4 ~-30 {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~1 ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~1 ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~2 ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~2 ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~5 ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~5 ~ {Tags:["castle_wall_builder_marker"]}
execute at @e[type=minecraft:marker,tag=castle_wall_builder_marker,limit=1,sort=furthest] run summon minecraft:marker ~5 ~ ~ {Tags:["castle_wall_builder_marker"]}

function castle_wall_builder:phase_determine_type/determine_type
function castle_wall_builder:phase_build_walls/spawn_walls
# Cleanup
function castle_wall_builder:clean_marker
