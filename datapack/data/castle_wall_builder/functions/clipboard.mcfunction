# Just a little file I use to store commands that may come in handy at a later coordinates

# Glowing block outline
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:glass"},Glowing:1b,NoGravity:1b,DropItem:0b,Time:-2147483648}
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone_brick_stairs",Properties:{facing:"south",half:"top",shape:"outer_right"}},Glowing:1b,NoGravity:1b,DropItem:0b,Time:-2147483648}
# If we find a blockstate that we can safely override we can create an practically invisible full block

# Unobtainable as a normal block (and doesn't have a predefined block state)
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:diorite_wall",Properties:{up:"false"}},Glowing:1b,NoGravity:1b,DropItem:0b,Time:-2147483648}
