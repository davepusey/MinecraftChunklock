################################################################################
# Item
################################################################################

# Summon temporary armorstand to handle the RNG loot roll
summon armor_stand ~ ~ ~ {Silent: 1b, Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["chunklock", "chunkItemInit"]}

# Roll a loot table into this armorstand's mainhand.
# This is how we select an item at random for the chunk's unlock.
# TODO: LOW Do we check the biome at multiple Y levels?
execute as @s[tag=locked] at @s as @e[tag=chunkItemInit,sort=nearest,limit=1] run function chunklock:chunk_items/roll_chunk_unlock_item

# Set the marker's data to equal the item rolled into the armorstand's hand
data modify entity @s data.source set from entity @e[tag=chunkItemInit,sort=nearest,limit=1] HandItems[0]

# We no longer need the armorstand, so kill it
kill @e[tag=chunkItemInit,sort=nearest,limit=1]

# Set a scoreboard tied to the quantity of the item rolled
execute store result score @s ChunklockChunkItemCount run data get entity @s data.source.Count

# Tag the chunk with the difficulty for which it was rolled
tag @s remove ChunkEasy
tag @s remove ChunkNormal
tag @s remove ChunkHard
tag @s remove ChunkImpossible

execute if score #global ChunklockDifficulty matches ..1 run tag @s add ChunkEasy
execute if score #global ChunklockDifficulty matches 2 run tag @s add ChunkNormal
execute if score #global ChunklockDifficulty matches 3 run tag @s add ChunkHard
execute if score #global ChunklockDifficulty matches 4.. run tag @s add ChunkImpossible

################################################################################
# Compute the chunk item multipliers.
# This allows us to scale chunk item scaling per-dimension
################################################################################

# If gamemode is easy, do not scale
execute if score #global ChunklockDifficulty matches ..1 run return 0

# Overworld chunks get harder to unlock every 16 chunks
execute if dimension minecraft:overworld run scoreboard players operation #overworldChunkItemMultiplier ChunklockTotalUnlockedChunks = #global ChunklockOverworldUnlockedChunks
execute if dimension minecraft:overworld run scoreboard players operation #overworldChunkItemMultiplier ChunklockTotalUnlockedChunks /= #16 Integers
execute if dimension minecraft:overworld run scoreboard players operation #overworldChunkItemMultiplier ChunklockTotalUnlockedChunks += #1 Integers
execute if dimension minecraft:overworld if score #overworldChunkItemMultiplier ChunklockTotalUnlockedChunks matches 2.. run scoreboard players operation @s ChunklockChunkItemCount *= #overworldChunkItemMultiplier ChunklockTotalUnlockedChunks

# Nether chunks get harder to unlock every 16 chunks
execute if dimension minecraft:the_nether run scoreboard players operation #netherChunkItemMultiplier ChunklockTotalUnlockedChunks = #global ChunklockNetherUnlockedChunks
execute if dimension minecraft:the_nether run scoreboard players operation #netherChunkItemMultiplier ChunklockTotalUnlockedChunks /= #16 Integers
execute if dimension minecraft:the_nether run scoreboard players operation #netherChunkItemMultiplier ChunklockTotalUnlockedChunks += #1 Integers
execute if dimension minecraft:the_nether if score #netherChunkItemMultiplier ChunklockTotalUnlockedChunks matches 2.. run scoreboard players operation @s ChunklockChunkItemCount *= #netherChunkItemMultiplier ChunklockTotalUnlockedChunks

# End chunks get harder to unlock every 32 chunks
execute if dimension minecraft:the_end run scoreboard players operation #endChunkItemMultiplier ChunklockTotalUnlockedChunks = #global ChunklockEndUnlockedChunks
execute if dimension minecraft:the_end run scoreboard players operation #endChunkItemMultiplier ChunklockTotalUnlockedChunks /= #32 Integers
execute if dimension minecraft:the_end run scoreboard players operation #endChunkItemMultiplier ChunklockTotalUnlockedChunks += #1 Integers
execute if dimension minecraft:the_end if score #endChunkItemMultiplier ChunklockTotalUnlockedChunks matches 2.. run scoreboard players operation @s ChunklockChunkItemCount *= #endChunkItemMultiplier ChunklockTotalUnlockedChunks

################################################################################
# Scaling based on set difficulty
################################################################################

# TODO: There is too big of a jump from Easy -> Normal.
# Perhaps we should rethink the difficulties or add another option.

# Normal difficulty,
execute if score #global ChunklockDifficulty matches 2 run return 1

# Hard difficulty
execute if score #global ChunklockDifficulty matches 3 run scoreboard players operation @s ChunklockChunkItemCount *= #4 Integers

# Impossible difficulty
execute if score #global ChunklockDifficulty matches 4.. run scoreboard players operation @s ChunklockChunkItemCount *= #16 Integers
