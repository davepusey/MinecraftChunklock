# Tag the current player for use within this function
tag @s add currentPlayer

# Process dimension changes
execute as @s[tag=awaitingDimensionLoad] at @s if loaded ~ ~ ~ run function chunklock:dimension/on_dimension_loaded

# Collide with chunk boundaries
# TODO: LOW - Allow exiting spectator mode in any chunk without the player
# getting immediately teleported back to their last "good" location.
execute as @s[gamemode=!spectator] run function chunklock:collision/player_chunk_collision

# Tick projectiles fired by this player
#                                                                                   Compare UUID1                                            Compare UUID2                                          Compare UUID3                                            Compare UUID4
#                                                               |=====================================================| |=====================================================| |=====================================================| |=====================================================|
execute as @e[tag=projectileInit,tag=!projectileCollided] at @s if score @s Uuid1 = @e[tag=currentPlayer,limit=1] Uuid1 if score @s Uuid2 = @e[tag=currentPlayer,limit=1] Uuid2 if score @s Uuid3 = @e[tag=currentPlayer,limit=1] Uuid3 if score @s Uuid4 = @e[tag=currentPlayer,limit=1] Uuid4 run function chunklock:projectile/tick_player_projectile

# Check if the reroll trigger command was executed
execute as @s[scores={ChunkReroll=1..}] at @s run function chunklock:utils/reroll_chunk
execute as @s[scores={ChunkReroll=1..}] at @s run scoreboard players reset @s ChunkReroll

# Check if the difficulty command was executed
execute as @s[scores={ChunkDifficulty=1..}] at @s run function chunklock:utils/render_chunk_difficulty_message
execute as @s[scores={ChunkDifficulty=1..}] at @s run scoreboard players reset @s ChunkDifficulty

# Check if the spread players command was executed
execute as @s[scores={ChunkSpreadPlayers=1..}] at @s run function chunklock:utils/spread_players
execute as @s[scores={ChunkSpreadPlayers=1..}] at @s run scoreboard players reset @s ChunkSpreadPlayers

# Check if the spread players command was executed
execute as @s[scores={ChunkHideUnlockTitle=1..}] at @s run tag @s add hideChunkUnlockTitle
execute as @s[scores={ChunkHideUnlockTitle=1..}] at @s run scoreboard players reset @s ChunkHideUnlockTitle

# Check if the spread players command was executed
execute as @s[scores={ChunkShowUnlockTitle=1..}] at @s run tag @s remove hideChunkUnlockTitle
execute as @s[scores={ChunkShowUnlockTitle=1..}] at @s run scoreboard players reset @s ChunkShowUnlockTitle

# Check if the uninstall command was executed
execute as @s[scores={ChunkUninstall=1..}] at @s run function chunklock:utils/uninstall
execute as @s[scores={ChunkUninstall=1..}] at @s run scoreboard players reset @s ChunkUninstall

# Clean up
tag @s remove currentPlayer
