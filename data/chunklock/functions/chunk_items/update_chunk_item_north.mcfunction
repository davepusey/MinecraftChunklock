# Update the item and item count for the chunk item display
# This function is run as the chunk marker and relies on relative
# positioning provided by the caller for optimization purpsoes.
# See update_chunk_items.mcfunction for more details

# Set the item type of the item display
data modify entity @e[limit=1,tag=chunkUnlockItemTypeDisplay,tag=chunkSideNorth,dx=15,dy=383,dz=15] item set from entity @s data.source

# Update the item count
execute as @e[tag=chunkUnlockItemCountDisplay,tag=chunkSideNorth,dx=15,dy=383,dz=15] run data modify entity @s text set value '{"score":{"name":"@e[type=minecraft:marker,tag=chunkMarker,tag=locked,sort=nearest,limit=1,y=80]","objective":"ChunklockChunkItemCount"}}'
