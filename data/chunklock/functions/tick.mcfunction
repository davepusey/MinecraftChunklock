# Initialize new players
execute as @a[tag=!playerInit] run function chunklock:init_player

# Initialize projectiles
execute as @e[predicate=chunklock:is_projectile,tag=!projectileInit] run function chunklock:projectile/init_projectile

# Tick players
execute as @a at @s run function chunklock:tick_player

# Tick ender pearls
execute as @e[type=minecraft:ender_pearl] at @s run function chunklock:pearl/tick_ender_pearl

# Tick chunk item displays
execute as @e[type=minecraft:item_display,tag=chunkUnlockItemTypeDisplay] at @s run function chunklock:tick_chunk_item_displays

# Anything below this line is executed every 4 ticks to conserve resources
# -----------------------------------
# Tick counter uo to 4. If the counter is below 4, return.
scoreboard players add #global ChunklockTickCounter 1
execute if score #global ChunklockTickCounter matches ..3 run return 0

# Reset tick counter
scoreboard players set #global ChunklockTickCounter 0

# Tick chunk markers
execute as @e[type=marker,tag=chunkMarker] at @s run function chunklock:tick_chunk_marker

# Handle chunks with and without players nearby
function chunklock:tick_chunk_player_proximity_check

# Tick interactions
execute as @e[type=minecraft:interaction,tag=chunklock] at @s run function chunklock:tick_chunk_interactions
