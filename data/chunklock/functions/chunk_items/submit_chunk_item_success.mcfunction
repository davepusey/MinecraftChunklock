# This function runs as the submitted item.
# The submitted item is the correct item type for the nearest locked chunk.

# Sound effects and particles
playsound block.end_portal_frame.fill block @a[distance=..25] ~ ~ ~ 1 1.5
particle totem_of_undying ~ ~ ~ 1 1 1 0.1 10

# Store the count of the item into a scoreboard
execute store result score @s ChunklockChunkItemCount run data get entity @s Item.Count
scoreboard players operation @s ChunklockChunkItemOverflowCount = @s ChunklockChunkItemCount

# If the item is correct, subtract the number of items from the current counters
scoreboard players operation @s ChunklockChunkItemOverflowCount -= @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemCount
scoreboard players operation @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemCount -= @s ChunklockChunkItemCount

# HACK: If this item is a Barrier block, pretend the count is exactly correct
# (this allows us to quickly unlock any chunk in Creative mode)
execute if entity @s[nbt={Item: {id: "minecraft:barrier"}}] run scoreboard players set @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemCount 0
execute if entity @s[nbt={Item: {id: "minecraft:barrier"}}] run scoreboard players set @s ChunklockChunkItemOverflowCount 0

# If the item is correct, but the quanity is not enough to clear the chunk, then kill the whole item stack
execute if score @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemCount matches 1.. run kill @s

# If the overflow count is 0, then all items should be deleted
execute if score @s ChunklockChunkItemOverflowCount matches 0 run kill @s

# If the item is correct and the quantity is more than is needed for the chunk, just update the item count
execute if score @s ChunklockChunkItemOverflowCount matches 1.. run execute store result entity @s Item.Count int 1 run scoreboard players get @s ChunklockChunkItemOverflowCount

# Unlock the chunk if we've submitted the correct number of items
execute as @e[type=marker,tag=currentChunk,tag=locked,limit=1] if score @s ChunklockChunkItemCount matches ..0 at @s run function chunklock:utils/unlock_current_chunk

# Update the block displays at this chunk to reflect the new quantities
execute as @e[type=marker,tag=currentChunk,tag=locked,limit=1] if score @s ChunklockChunkItemCount matches 1.. at @s run function chunklock:chunk_items/update_chunk_items
