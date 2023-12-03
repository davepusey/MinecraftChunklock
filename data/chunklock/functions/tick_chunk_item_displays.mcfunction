# TODO: LOW not optimal for multiplayer - will only render one item  display per chunk

# Move chunk unlock item displays to match the Y height of the nearest player.
execute if dimension overworld if entity @p[predicate=chunklock:is_in_overworld_chunk_render_height] run data modify entity @s Pos[1] set from entity @p[predicate=chunklock:is_in_overworld_chunk_render_height] Pos[1]
execute if dimension the_nether if entity @p[predicate=chunklock:is_in_the_nether_chunk_render_height] run data modify entity @s Pos[1] set from entity @p[predicate=chunklock:is_in_the_nether_chunk_render_height] Pos[1]
execute if dimension the_end if entity @p[predicate=chunklock:is_in_the_end_chunk_render_height] run data modify entity @s Pos[1] set from entity @p[predicate=chunklock:is_in_the_end_chunk_render_height] Pos[1]
