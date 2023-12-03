tag @s remove locked
tag @s add unlocked

# Kill all block displays and interaction entities directly above and below us
execute positioned ~-0.5 ~-500 ~-0.5 run kill @e[type=minecraft:block_display,dx=1,dy=9999,dz=1]
execute positioned ~-0.5 ~-500 ~-0.5 run kill @e[type=minecraft:interaction,dx=1,dy=9999,dz=1]

# Kill all chunk items
function chunklock:chunk_items/kill_chunk_items

# Increment unlocked chunks scoreboard per dimension
scoreboard players add #global ChunklockTotalUnlockedChunks 1
execute if dimension overworld run scoreboard players add #global ChunklockOverworldUnlockedChunks 1
execute if dimension the_nether run scoreboard players add #global ChunklockNetherUnlockedChunks 1
execute if dimension the_end run scoreboard players add #global ChunklockEndUnlockedChunks 1

# Increment the chunk unlock count of the player who threw the item
scoreboard players add @p[tag=itemThrower] ChunklockTotalUnlockedChunks 1
execute if dimension overworld run scoreboard players add @p[tag=itemThrower] ChunklockOverworldUnlockedChunks 1
execute if dimension the_nether run scoreboard players add @p[tag=itemThrower] ChunklockNetherUnlockedChunks 1
execute if dimension the_end run scoreboard players add @p[tag=itemThrower] ChunklockEndUnlockedChunks 1

# Render unlock message
execute if entity @p[tag=itemThrower] run function chunklock:utils/render_chunk_unlock_message
execute unless entity @p[tag=itemThrower] run function chunklock:utils/render_chunk_auto_unlock_message

# Check for advancements
execute if entity @s[nbt={data: {source: {id: "minecraft:ancient_debris"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_ancient_debris
execute if entity @s[nbt={data: {source: {id: "minecraft:diamond"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_diamond
execute if entity @s[nbt={data: {source: {id: "minecraft:emerald"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_emerald
execute if entity @s[nbt={data: {source: {id: "minecraft:gold_ingot"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_gold_ingot
execute if entity @s[nbt={data: {source: {id: "minecraft:iron_ingot"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_iron_ingot
execute if entity @s[nbt={data: {source: {id: "minecraft:stone"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_stone
execute if entity @s[nbt={data: {source: {id: "minecraft:pufferfish"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_pufferfish
execute if entity @s[nbt={data: {source: {id: "minecraft:nether_brick"}}}] run advancement grant @p[tag=itemThrower] only chunklock:main/chunk_item_nether_brick
