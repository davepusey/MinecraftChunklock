# Tag the current player for use within this function
tag @s add currentPlayer

# Tag the current player's position marker for use within this function
#                                                                 Compare UUID1                                            Compare UUID2                                          Compare UUID3                                            Compare UUID4
#                                            |=====================================================| |=====================================================| |=====================================================| |=====================================================|
execute as @e[type=marker,tag=prevPosMarker] if score @s Uuid1 = @a[tag=currentPlayer,limit=1] Uuid1 if score @s Uuid2 = @a[tag=currentPlayer,limit=1] Uuid2 if score @s Uuid3 = @a[tag=currentPlayer,limit=1] Uuid3 if score @s Uuid4 = @a[tag=currentPlayer,limit=1] Uuid4 run tag @s add currentPlayerMarker

# Record our current rotation in this position marker
# (this should be located at our last "good" position)
execute rotated as @s as @e[tag=currentPlayerMarker,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

# Teleport to the marker
tp @s @e[tag=currentPlayerMarker,limit=1]

# Clean up
tag @s remove currentPlayer
tag @e[tag=currentPlayerMarker] remove currentPlayerMarker
