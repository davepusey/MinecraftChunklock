################################################################################
# Block Display
################################################################################

# Summon block displays to fill the chunk.
# Ideally we would use a single block display per chunk, but for technical
# reasons this is not possible so we stack multiple entities vertically.

# NOTES:
# => For some reason, the color of a block display starts to fade as its y-scale
#    approaches the world height.
# => Entities are not guaranteed to load if they are too far from the player in
#    the y-axis. I have tried to place display blocks such that they load
#    reliably, but this is a bit of a dark art. In the overworld, block displays
#    often cannot be seen until the player looks up for this reason.
# => We make them very slightly wider than a chunk to avoid z-fighting with
#    blocks at the chunk edges.
# => We translate each entity by -scale/2 to ensure it's centered.
# => See `pre_tick_player` for more info on the world height.

execute if dimension minecraft:overworld run summon block_display ~ 0 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -64.0005f, -8.0005f], scale: [16.001f, 64.001f, 16.001f]}, block_state: {Name: "minecraft:light_blue_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon block_display ~ 64 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -64.0005f, -8.0005f], scale: [16.001f, 64.001f, 16.001f]}, block_state: {Name: "minecraft:light_blue_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon block_display ~ 128 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -64.0005f, -8.0005f], scale: [16.001f, 128.001f, 16.001f]}, block_state: {Name: "minecraft:light_blue_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon block_display ~ 256 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -64.0005f, -8.0005f], scale: [16.001f, 128.001f, 16.001f]}, block_state: {Name: "minecraft:light_blue_stained_glass"}, Tags: [chunklock]}

execute if dimension minecraft:the_nether run summon block_display ~ 16 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -16.0005f, -8.0005f], scale: [16.001f, 32.001f, 16.001f]}, block_state: {Name: "minecraft:yellow_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon block_display ~ 48 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -16.0005f, -8.0005f], scale: [16.001f, 32.001f, 16.001f]}, block_state: {Name: "minecraft:yellow_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon block_display ~ 80 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -16.0005f, -8.0005f], scale: [16.001f, 32.001f, 16.001f]}, block_state: {Name: "minecraft:yellow_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon block_display ~ 112 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -16.0005f, -8.0005f], scale: [16.001f, 32.001f, 16.001f]}, block_state: {Name: "minecraft:yellow_stained_glass"}, Tags: [chunklock]}

execute if dimension minecraft:the_end run summon block_display ~ 64 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -64.0005f, -8.0005f], scale: [16.001f, 128.001f, 16.001f]}, block_state: {Name: "minecraft:purple_stained_glass"}, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon block_display ~ 192 ~ {view_range: 255f, brightness: {sky: 10, block: 10}, transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [-8.0005f, -64.0005f, -8.0005f], scale: [16.001f, 128.001f, 16.001f]}, block_state: {Name: "minecraft:purple_stained_glass"}, Tags: [chunklock]}

################################################################################
# Items
################################################################################

# Init the item and count of that item used to unlock the chunk
function chunklock:chunk_init/init_locked_chunk_unlock_item
