# Tag the current player for use within this function
tag @s add currentPlayer

# Kill the previous position marker associated with this player
#                                                   Compare UUID1                                            Compare UUID2                                          Compare UUID3                                            Compare UUID4
#                                |=====================================================| |=====================================================| |=====================================================| |=====================================================|
execute as @e[tag=prevPosMarker] if score @s Uuid1 = @a[tag=currentPlayer,limit=1] Uuid1 if score @s Uuid2 = @a[tag=currentPlayer,limit=1] Uuid2 if score @s Uuid3 = @a[tag=currentPlayer,limit=1] Uuid3 if score @s Uuid4 = @a[tag=currentPlayer,limit=1] Uuid4 run kill @s

# Summon a new positon marker
summon minecraft:marker ^ ^ ^ {Tags: [chunklock, prevPosMarker, markerNeedsInit]}

# Associate this with the current player.
# We do this by saving the player's UUID to the marker's UUID scoreboard.
execute store result score @e[tag=prevPosMarker,tag=markerNeedsInit,limit=1] Uuid1 run data get entity @s UUID[0]
execute store result score @e[tag=prevPosMarker,tag=markerNeedsInit,limit=1] Uuid2 run data get entity @s UUID[1]
execute store result score @e[tag=prevPosMarker,tag=markerNeedsInit,limit=1] Uuid3 run data get entity @s UUID[2]
execute store result score @e[tag=prevPosMarker,tag=markerNeedsInit,limit=1] Uuid4 run data get entity @s UUID[3]

# Clean up
tag @s remove currentPlayer
tag @e[tag=markerNeedsInit] remove markerNeedsInit
