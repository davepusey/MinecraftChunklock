# For now, break the pearl.
# If we do nothing, the pearl lands but the player gets instantly teleported
# back to their previous location.

# TODO: Medium...
# Later, maybe we could teleport the thrower to the pearl's previous location,
# just before it entered the locked chunk. We would need to place a marker at
# the pearl each tick so that we can retrieve the previous location.

# We use a large delta value here so particles have a chance to spawn outside
# the locked chunk, otherwise they won't get rendered due to the chunk border
# being in the way.
# TODO: LOW - Sometimes the particles still don't show up because the projectile
# was too far inside the locked chunk.
particle ash ~ ~ ~ 0.75 0.5 0.75 0 20 force
playsound entity.item.break player @a ~ ~ ~
kill @s
