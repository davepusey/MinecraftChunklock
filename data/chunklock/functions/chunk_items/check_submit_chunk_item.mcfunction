# This function runs as the item within a chunk
function chunklock:utils/find_nearest_locked_chunk

# If the current chunk is not locked, then cleanup and return
execute unless entity @e[type=marker,tag=currentChunk,tag=locked,limit=1] run function chunklock:utils/done_with_nearest_locked_chunk
execute unless entity @e[type=marker,tag=currentChunk,tag=locked,limit=1] run return 0

# Copy the source data (the block we want) to a temporary data structure on the chunk's marker
execute as @e[type=marker,tag=currentChunk,tag=locked,limit=1] run data modify entity @s data.comparison set from entity @s data.source

# Try to write over the temporary structure with the nearby item. If this succeeds, the nearby item is NOT the chunk item.
execute store success score @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemTest run data modify entity @e[type=marker,tag=currentChunk,tag=locked,limit=1] data.comparison.id set from entity @s Item.id

# HACK: If this item is a Barrier block, pretend we passed the test
# (this allows us to quickly unlock any chunk in Creative mode)
execute if entity @s[nbt={Item: {id: "minecraft:barrier"}}] run scoreboard players set @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemTest 0

# Store the player who threw this item into a temporary scoreboard
execute store result score #itemThrower Uuid1 run data get entity @s Thrower[0]
execute store result score #itemThrower Uuid2 run data get entity @s Thrower[1]
execute store result score #itemThrower Uuid3 run data get entity @s Thrower[2]
execute store result score #itemThrower Uuid4 run data get entity @s Thrower[3]

# Tag the player who threw the item for use later
execute as @a if score @s Uuid1 = #itemThrower Uuid1 if score @s Uuid2 = #itemThrower Uuid2 if score @s Uuid3 = #itemThrower Uuid3 if score @s Uuid4 = #itemThrower Uuid4 run tag @s add itemThrower

# Process the correct Item
execute unless score davepusey UnlockingDisabled matches 1 if score @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemTest matches 0 run function chunklock:chunk_items/submit_chunk_item_success

# Process the incorrect Item
execute if score @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemTest matches 1 run function chunklock:chunk_items/submit_chunk_item_failure

# If the item still exists, allow the item to be picked up right away
execute if entity @s run data modify entity @s PickupDelay set value 0

# If the item still exists, tag the item as processed so that it won't be processed again
execute if entity @s run tag @s add itemProcessed

# Teleport item back to nearest player if it still exists
execute if entity @s run teleport @s @p[tag=itemThrower]

# Reset the score of the Chunklock test
scoreboard players set @e[type=marker,tag=currentChunk,tag=locked,limit=1] ChunklockChunkItemTest 1

# Remove Item Thrower tag
tag @a[tag=itemThrower] remove itemThrower

function chunklock:utils/done_with_current_chunk
