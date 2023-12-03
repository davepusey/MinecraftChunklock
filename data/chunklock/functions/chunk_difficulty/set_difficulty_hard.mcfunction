execute if score #global ChunklockTotalUnlockedChunks matches 1.. run tellraw @s [{"text":"You can't change Chunklock's difficulty after unlocking your first chunk. ","color":"red"},{"text":"Click Here","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Reset Chunklock (Resets every loaded chunk)","color":"red"}]},"clickEvent":{"action":"run_command","value":"/function chunklock:utils/reset"}},{"text":" to fully reset all chunks.","color":"white"}]
execute if score #global ChunklockTotalUnlockedChunks matches 1.. run return 0

execute unless score #global ChunklockDifficulty matches 3 run function chunklock:utils/reset

tellraw @a [{"text": "The ", "color": "white", "bold": true}, {"text": "Chunklock", "color": "gold", "bold": true}, {"text": " difficulty has been set to ",  "color": "white","bold": true}, {"text": "Hard", "color": "yellow", "bold": true}, {"text": ".",  "color": "white","bold": true}]
scoreboard players set #global ChunklockDifficulty 3
