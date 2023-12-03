# Summon a marker to represent the player's location on the same y-plane as
# our chunk markers. This allows us to perform distance checks in 2D.
#
# We generate chunk markers at a fixed y-position, vertically centered in the
# current dimension. We rely on the fact that all chunk markers in a given
# dimension have the same y-position.
#
# Dimension build limits (inclusive):
# -----------------------------------
#   Overworld:   -64 to 319
#   Nether:        0 to 127
#   End:           0 to 255
execute if dimension minecraft:overworld positioned ~ 128 ~ run summon minecraft:marker ~ ~ ~ {Tags: [chunklock, player2d, currentPlayer]}
execute if dimension minecraft:the_nether positioned ~ 64 ~ run summon minecraft:marker ~ ~ ~ {Tags: [chunklock, player2d, currentPlayer]}
execute if dimension minecraft:the_end positioned ~ 64 ~ run summon minecraft:marker ~ ~ ~ {Tags: [chunklock, player2d, currentPlayer]}

# If no chunk marker is nearby, we need to generate one.
#   ("Nearby" means within 12 blocks, because Pythagoras tells us that players
#    can never be more than 12 blocks from a chunk marker.)
# This should only ever happen when players first spawn, or travel between
# dimensions. After the initial chunk marker has been generated, they are
# self-propagating.
execute as @e[type=marker,tag=player2d,tag=currentPlayer] at @s unless entity @e[type=marker,tag=chunkMarker,distance=..12] if loaded ~ ~ ~ run function chunklock:chunk_init/init_containing_chunk

# Remove temporary tag so that it can be used by the next player
tag @e[type=marker,tag=player2d,tag=currentPlayer] remove currentPlayer
