tag @p add awaitingDimensionLoad

# Revoke the advancement that caused this event so we can detect the next
# dimension change.
advancement revoke @s only chunklock:util/change_dimension
