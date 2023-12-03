##
# Sets the PosX/PosZ scoreboard values of the current executor to the center of
# the chunk whose co-ordinates are stored in the ChunkX/ChunkZ scoreboards.
#

# Multiply by 16 to find the chunk origin
scoreboard players operation @s PosX = @s ChunkX
scoreboard players operation @s PosZ = @s ChunkZ
scoreboard players operation @s PosX *= #16 Integers
scoreboard players operation @s PosZ *= #16 Integers

# Add 8 to find the chunk center
scoreboard players operation @s PosX += #8 Integers
scoreboard players operation @s PosZ += #8 Integers
