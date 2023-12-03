# Create scoreboards
scoreboard objectives add ChunkX dummy
scoreboard objectives add ChunkZ dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add Uuid1 dummy
scoreboard objectives add Uuid2 dummy
scoreboard objectives add Uuid3 dummy
scoreboard objectives add Uuid4 dummy
scoreboard objectives add Temp dummy

# Scoreboard containing integer literals for use in math operators
scoreboard objectives add Integers dummy
scoreboard players set #1 Integers 1
scoreboard players set #2 Integers 2
scoreboard players set #4 Integers 4
scoreboard players set #8 Integers 8
scoreboard players set #16 Integers 16
scoreboard players set #32 Integers 32
scoreboard players set #64 Integers 64
scoreboard players set #128 Integers 128

# Scoreboards for tracking chunk unlocking
scoreboard objectives add ChunklockChunkItemCount dummy
scoreboard objectives add ChunklockChunkItemOverflowCount dummy
scoreboard objectives add ChunklockChunkItemTest dummy
scoreboard objectives add ChunklockTotalUnlockedChunks dummy
scoreboard objectives add ChunklockOverworldUnlockedChunks dummy
scoreboard objectives add ChunklockNetherUnlockedChunks dummy
scoreboard objectives add ChunklockEndUnlockedChunks dummy
scoreboard objectives add ChunklockChunksRerolled dummy
scoreboard objectives add ChunklockChunkItemHasThrower dummy
scoreboard objectives setdisplay list ChunklockTotalUnlockedChunks
scoreboard objectives modify ChunklockTotalUnlockedChunks displayname "Chunks"
scoreboard objectives add ChunklockTickCounter dummy

function chunklock:utils/set_chunk_unlock_count_below_name

# Difficulty Tracker. Add 0 to global value so that its set correctly on init, then set the default value to 2 (normal mode).
scoreboard objectives add ChunklockDifficulty dummy
scoreboard players add #global ChunklockDifficulty 0
execute if score #global ChunklockDifficulty matches ..0 run function chunklock:utils/render_chunk_difficulty_message
execute if score #global ChunklockDifficulty matches ..0 run scoreboard players set #global ChunklockDifficulty 2

# Scoreboard for trigger commands
scoreboard objectives add ChunkReroll trigger
scoreboard objectives add ChunkDifficulty trigger
scoreboard objectives add ChunkUninstall trigger
scoreboard objectives add ChunkSpreadPlayers trigger
scoreboard objectives add ChunkHideUnlockTitle trigger
scoreboard objectives add ChunkShowUnlockTitle trigger

# Force players to spawn around a single block to prevent chunk
gamerule spawnRadius 0
