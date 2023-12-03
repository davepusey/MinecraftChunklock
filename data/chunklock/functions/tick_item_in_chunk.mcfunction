# Tag items inside of locked chunk boundaries that have been thrown by a player
execute store success score @s ChunklockChunkItemHasThrower run data get entity @s Thrower

# Any items that have not been thrown by the player, mark them as already processed
# We will leave them in the chunk to despawn, or if players are fast enough they can get to them
tag @s[scores={ChunklockChunkItemHasThrower=0}] add itemProcessed

# Process the remaining items that are within the chunk and thrown by a player
execute as @s[scores={ChunklockChunkItemHasThrower=1}] at @s run function chunklock:chunk_items/check_submit_chunk_item
