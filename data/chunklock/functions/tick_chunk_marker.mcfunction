# Chunk markers are self-propagating: they automatically initialize their
# neighbors. This is easier than using players to generate new markers, because
# we can rely on the fact that all markers are exactly 16 blocks apart.
# We only do this when a player is nearby, to prevent infinite recursion. We
# can increase this distance to initialize chunks in a wider radius around the
# player.
execute if entity @s[tag=!initNeighborsDone] positioned ~-24 ~-1 ~-24 if entity @e[type=marker,tag=player2d,dx=48, dz=48, dy=1] positioned ~24 ~1 ~24 at @s run function chunklock:chunk_init/init_neighbors
