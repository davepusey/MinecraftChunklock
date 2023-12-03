# Store current chunk to ChunkX/Z scoreboards
function chunklock:utils/find_chunk_coords

# Store chunk center to PosX/Z scoreboards
function chunklock:utils/find_chunk_center

# Set our position to the chunk center
execute store result entity @s Pos[0] double 1 run scoreboard players get @s PosX
execute store result entity @s Pos[2] double 1 run scoreboard players get @s PosZ

# Automatically unlock chunks in "The End" biome (central island),
# except for those that contain an End Crystal.
# We use a volume slightly smaller than 16x16 because otherwise it detects End
# Crystals at the edges of neighbouring chunks (don't ask me why).
execute if biome ~ ~ ~ the_end positioned ~-8 ~-500 ~-8 unless entity @e[type=minecraft:end_crystal,dx=15.5,dy=9999,dz=15.5] run tag @s remove locked

# Chunks that are not locked should be marked as unlocked
tag @s[tag=!locked,tag=!unlocked] add unlocked

# Locked chunks require additional initialization
execute as @s[tag=locked] run function chunklock:chunk_init/init_locked_chunk
