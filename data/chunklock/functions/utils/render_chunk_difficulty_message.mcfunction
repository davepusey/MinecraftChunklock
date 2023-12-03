# Shows a message to the calling player that allows them to set the difficulty of Chunklock

execute if score #global ChunklockTotalUnlockedChunks matches 1.. run tellraw @s [{"text":"You can't change Chunklock's difficulty after unlocking your first chunk. ","color":"red"},{"text":"Click Here","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Reset Chunklock (Resets every loaded chunk)","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function chunklock:utils/reset"}},{"text":" to fully reset all chunks.","color":"white"}]
execute if score #global ChunklockTotalUnlockedChunks matches 1.. run return 0

tellraw @s [{"text":"Select Chunklock's Difficulty!","color":"gold","bold":true}, {"text":" Choose wisely. You won't be able to change your mind after you unlock your first chunk.","color":"white","bold":false,"italic":true}]
tellraw @s [{"text":"- Easy","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"Chunk unlock requirements will never get harder. Good for beginngers to Chunklock mode!"}]},"clickEvent":{"action":"run_command","value":"/function chunklock:chunk_difficulty/set_difficulty_easy"}}]
tellraw @s [{"text":"- Normal (recommended)","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"The classic Chunklock experience."}]},"clickEvent":{"action":"run_command","value":"/function chunklock:chunk_difficulty/set_difficulty_normal"}}]
tellraw @s [{"text":"- Hard","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Chunk unlock requirements will scale twice as quickly as Normal mode. You may have to get creative."}]},"clickEvent":{"action":"run_command","value":"/function chunklock:chunk_difficulty/set_difficulty_hard"}}]
tellraw @s [{"text":"- Impossible","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"We have no idea if this is winnable."}]},"clickEvent":{"action":"run_command","value":"/function chunklock:chunk_difficulty/set_difficulty_impossible"}}]
