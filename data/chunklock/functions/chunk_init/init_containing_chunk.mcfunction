# We summon a chunk marker at the current location and then `init_chunk_marker`
# takes care of positionining it correctly within the chunk.
# Later, we can use the version tag to support migrating old chunks to new
# versions of the data pack.
# Chunks spawned by players are unlocked by default.
execute as @s[tag=currentPlayer] run summon minecraft:marker ~ ~ ~ {Tags: [chunklock, chunkMarker, v1, unlocked]}
execute as @s[tag=!currentPlayer] run summon minecraft:marker ~ ~ ~ {Tags: [chunklock, chunkMarker, v1, locked]}
execute as @e[type=marker,tag=chunkMarker,distance=..1,sort=nearest,limit=1] at @s run function chunklock:chunk_init/init_chunk_marker
