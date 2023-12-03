# Check the four sides of the chunk to see which side a player is located
# Markers are at the center of chunks
# Visual documentation for this file can be found here: https://docs.google.com/presentation/d/1fnnPPHHQwtCDNjGvijE-kX5F0nHnA3n8xFcYH46LwcA/edit#slide=id.p

# If no neighboring unlocked chunk exists, then exit this check
execute unless entity @e[type=marker,tag=unlocked,distance=16..17] run return 1

# Run the north item display check at a relative position
execute positioned ~-8 -64 ~-23 run function chunklock:chunk_items/check_render_chunk_item_north

# Run the south item display check at a relative position
execute positioned ~-8 -64 ~7 run function chunklock:chunk_items/check_render_chunk_item_south

# Run the east item display check at a relative position
execute positioned ~7 -64 ~-8 run function chunklock:chunk_items/check_render_chunk_item_east

# Run the west item display check at a relative position
execute positioned ~-23 -64 ~-8 run function chunklock:chunk_items/check_render_chunk_item_west
