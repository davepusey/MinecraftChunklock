# TODO: HIGH - Is this better or worse than having interaction entities being
# spawned on chunk init? If this proves too expensive, we could potentially
# summon interaction entities over multiple frames to spread the cost.

################################################################################
# Interaction
################################################################################

# Summon interaction entities to fill the chunk.
# This prevents players from mining into the chunk.
# Ideally we would use a single interaction entity per chunk, but for technical
# reasons this is not possible so we stack multiple entities vertically.

# NOTES:
# => For some reason, interaction entities stop working when they get too big.
# => Entities are not guaranteed to load if they are too far from the player in
#    the y-axis, so we need 1 interaction entity per subchunk (16 blocks) for
#    this to work reliably. For the high-up Overworld / End chunks we relax this
#    rule a little, because it's mostly just air anyway.
# => We actually have to make them very slightly wider than a chunk, otherwise
#    players can still mine the blocks at the very edge of the chunk.
# => Interaction entities have their origin at the bottom of the hitbox.
# => See `pre_tick_player` for more info on the world height.

# Overworld: 16 interactions per chunk
execute if dimension minecraft:overworld run summon interaction ~ -64 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ -48 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ -32 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ -16 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 0 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 16 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 32 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 48 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 64 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 80 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 96 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 112 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 128 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 144 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 160 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 176 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:overworld run summon interaction ~ 192 ~ {width: 16.0001f, height: 128f, response: 1b, Tags: [chunklock]}

# Nether: 8 interactions per chunk
execute if dimension minecraft:the_nether run summon interaction ~ 0 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 16 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 32 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 48 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 64 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 80 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 96 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_nether run summon interaction ~ 112 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}

# End: 9 interactions per chunk
execute if dimension minecraft:the_end run summon interaction ~ 0 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 16 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 32 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 48 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 64 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 80 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 96 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 112 ~ {width: 16.0001f, height: 16f, response: 1b, Tags: [chunklock]}
execute if dimension minecraft:the_end run summon interaction ~ 128 ~ {width: 16.0001f, height: 128f, response: 1b, Tags: [chunklock]}
