################################################################################
# Tag chunks that have players nearby
# This allows us to summon or kill entities related to chunks with or without nearby players
# such as item and text displays, and possibly interactions in the future
################################################################################

# Clear all chunks' player-nearby status
tag @e[type=marker,tag=chunkHasPlayerNearby] remove chunkHasPlayerNearby

# Excute as all players' 2-d marker. Tag locked chunks that are adjecent to the chunk the current player is located in.
# This is an optimization over executing as each chunk marker and finding nearby players.
# Likely there are many fewer players than chunks loaded.
# As an additional optimization, we avoid using the distance check.
execute at @e[type=marker,tag=player2d] positioned ~-8 ~-1 ~-8 at @e[type=marker,tag=chunkMarker,tag=unlocked,limit=1,dx=15,dy=1,dz=15,sort=nearest] positioned ~-17 ~-1 ~-17 run tag @e[type=marker,tag=chunkMarker,tag=locked,dx=33,dy=1,dz=33] add chunkHasPlayerNearby

# Detect when a player enters the proximity of a chunk
execute as @e[type=marker,tag=chunkMarker,tag=locked,tag=!chunkHasPlayerNearbyPrev,tag=chunkHasPlayerNearby] at @s run function chunklock:chunk_proximity/on_chunk_become_relevant

# Detect when a player leaves the proximity of a chunk
execute as @e[type=marker,tag=chunkMarker,tag=locked,tag=chunkHasPlayerNearbyPrev,tag=!chunkHasPlayerNearby] at @s run function chunklock:chunk_proximity/on_chunk_cease_relevant

# Tick chunks that currently have a player in their proximity
execute as @e[type=marker,tag=chunkMarker,tag=locked,tag=chunkHasPlayerNearby] at @s run function chunklock:chunk_proximity/tick_relevant_chunk

# Store previous result of whether a player was near this chunk
tag @e[type=marker,tag=chunkMarker,tag=locked,tag=!chunkHasPlayerNearby,tag=chunkHasPlayerNearbyPrev] remove chunkHasPlayerNearbyPrev
tag @e[type=marker,tag=chunkMarker,tag=locked,tag=chunkHasPlayerNearby] add chunkHasPlayerNearbyPrev
