# Updates all the chunk item displays for a given chunk
# This is used when the quanity or items change

# Run the north item display check at a relative position
execute if entity @s[tag=locked, tag=chunkHasNorthItemRendered] positioned ~-8 -64 ~-23 run function chunklock:chunk_items/update_chunk_item_north

# Run the south item display check at a relative position
execute if entity @s[tag=locked,  tag=chunkHasSouthItemRendered] positioned ~-8 -64 ~7 run function chunklock:chunk_items/update_chunk_item_south

# Run the east item display check at a relative position
execute if entity @s[tag=locked,  tag=chunkHasEastItemRendered] positioned ~7 -64 ~-8 run function chunklock:chunk_items/update_chunk_item_east

# Run the west item display check at a relative position
execute if entity @s[tag=locked,  tag=chunkHasWestItemRendered] positioned ~-23 -64 ~-8 run function chunklock:chunk_items/update_chunk_item_west
