#
# Sets the ChunkX/ChunkZ scoreboard values of the current executor to the
# chunk co-ordinates at the current position.
#

# Find containing chunk (scale factor of 0.0625 is equivalent to dividing by 16)
execute store result score @s ChunkX run data get entity @s Pos[0] 0.0625
execute store result score @s ChunkZ run data get entity @s Pos[2] 0.0625
