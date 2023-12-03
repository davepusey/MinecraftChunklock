# Function to handle if a player is near a chunk

# If a player is close enough to the chunk, render the chunk item unlock indicators
function chunklock:chunk_items/render_chunk_items

# Process items that have entered the chunk
execute positioned ~-9 -64 ~-9 as @e[type=item,dx=17,dy=383,dz=17,tag=!itemProcessed] run function chunklock:tick_item_in_chunk
