# Run the north item display check at a relative position
execute positioned ~-8 -64 ~-23 run function chunklock:chunk_items/kill_chunk_item_north

# Run the south item display check at a relative position
execute positioned ~-8 -64 ~7 run function chunklock:chunk_items/kill_chunk_item_south

# Run the east item display check at a relative position
execute positioned ~7 -64 ~-8 run function chunklock:chunk_items/kill_chunk_item_east

# Run the west item display check at a relative position
execute positioned ~-23 -64 ~-8 run function chunklock:chunk_items/kill_chunk_item_west
