# There is no guarantee that all neighbors will be initialized at once, so we
# need to use a separate tag to track each neighbor.

# TODO: LOW - These functions call `init_containing_chunk`, which does some
# calculations to ensure the chunk marker is in the center of the chunk. These
# calculations are unnecessary in this case, since we already know we are
# spawning the new markers at the chunk centers.

# North (negative Z)
execute as @s[tag=!initNeighborNorth] positioned ~ ~ ~-16 if loaded ~ ~ ~ if entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run tag @s add initNeighborNorth
execute as @s[tag=!initNeighborNorth] positioned ~ ~ ~-16 if loaded ~ ~ ~ unless entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run function chunklock:chunk_init/init_neighbor_north

# East (positive X)
execute as @s[tag=!initNeighborEast] positioned ~16 ~ ~ if loaded ~ ~ ~ if entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run tag @s add initNeighborEast
execute as @s[tag=!initNeighborEast] positioned ~16 ~ ~ if loaded ~ ~ ~ unless entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run function chunklock:chunk_init/init_neighbor_east

# South (positive Z)
execute as @s[tag=!initNeighborSouth] positioned ~ ~ ~16 if loaded ~ ~ ~ if entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run tag @s add initNeighborSouth
execute as @s[tag=!initNeighborSouth] positioned ~ ~ ~16 if loaded ~ ~ ~ unless entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run function chunklock:chunk_init/init_neighbor_south

# West (negative X)
execute as @s[tag=!initNeighborWest] positioned ~-16 ~ ~ if loaded ~ ~ ~ if entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run tag @s add initNeighborWest
execute as @s[tag=!initNeighborWest] positioned ~-16 ~ ~ if loaded ~ ~ ~ unless entity @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] run function chunklock:chunk_init/init_neighbor_west

# Prevent re-entry once ALL neighbors are initialized
tag @s[tag=initNeighborNorth,tag=initNeighborEast,tag=initNeighborSouth,tag=initNeighborWest] add initNeighborsDone
