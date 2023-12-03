# This function should not be run on its own, as it relies on relative positioning supplied from the caller, show_chunk_items
# A chunk item already exists, return
execute if entity @s[tag=chunkHasWestItemRendered] run return 1

# If no player is in a visible range of this then exit
execute unless entity @p[dx=15,dy=383,dz=15] run return 2

# Summon the item display
summon item_display ~15.1 0 ~8 {Glowing: 1b, item: {id: "minecraft:air", Count: 1b}, view_range: 0.2f, brightness: {sky: 7, block: 7}, teleport_duration: 2, Rotation: [90f, 0f], Tags: ["chunklock", "chunkUnlockItemTypeDisplay", "chunkSideWest"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 1f, 0.1f], scale: [1f, 1f, 1f]}, Passengers: [{id: "minecraft:text_display", text: '{"text":"0"}', brightness: {sky: 15, block: 15}, view_range: 0.2f, Rotation: [90f, 0f], Tags: ["chunklock", "chunkUnlockItemCountDisplay", "chunkSideWest"], transformation: {left_rotation: [0f, 0f, 0f, 1f], right_rotation: [0f, 0f, 0f, 1f], translation: [0f, 0.75f, 0.6f], scale: [1.5f, 1.5f, 1.5f]}, background: 16777215, shadow: 1b}]}

# Tag that this chunk has an item rendered
tag @s add chunkHasWestItemRendered

# Update the west chunk item
function chunklock:chunk_items/update_chunk_item_west
