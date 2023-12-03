# This is called when a chunk is not unlocked by a player throwing an item,
# e.g. when going through a portal into a previously-spawned locked chunk.
# If we wanted the normal unlock message we could tag the current player with
# "itemThrower" in `on_dimension_loaded`, but that might be confusing.
tellraw @a {"text": "A chunk was unlocked!"}
