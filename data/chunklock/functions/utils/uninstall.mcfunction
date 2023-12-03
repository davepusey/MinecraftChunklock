# Remove Chunklock
scoreboard objectives remove ChunklockTotalUnlockedChunks
scoreboard objectives remove ChunklockOverworldUnlockedChunks
scoreboard objectives remove ChunklockNetherUnlockedChunks
scoreboard objectives remove ChunklockEndUnlockedChunks
scoreboard objectives remove ChunklockDifficulty
scoreboard objectives add ChunklockTotalUnlockedChunks dummy
kill @e[tag=chunklock]
tag @a remove playerInit

datapack disable "file/chunklock"
