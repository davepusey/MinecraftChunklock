# These y-positions MUST match those in `pre_tick_player`!
# TODO: LOW - Reduce duplication
execute if dimension minecraft:overworld positioned ~ 128 ~ run tag @e[type=marker,tag=chunkMarker,tag=locked,distance=..15,sort=nearest,limit=1] add currentChunk
execute if dimension minecraft:the_nether positioned ~ 64 ~ run tag @e[type=marker,tag=chunkMarker,tag=locked,distance=..15,sort=nearest,limit=1] add currentChunk
execute if dimension minecraft:the_end positioned ~ 64 ~ run tag @e[type=marker,tag=chunkMarker,tag=locked,distance=..15,sort=nearest,limit=1] add currentChunk

#
# IMPORTANT: Call `done_with_current_chunk` when finished!
#
