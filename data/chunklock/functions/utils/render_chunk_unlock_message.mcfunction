# Check if this unlocked chunk is a multiple of 8, 16, 32, 64 or 128
scoreboard players operation #globalChunkMod8 ChunklockTotalUnlockedChunks = #global ChunklockTotalUnlockedChunks
scoreboard players operation #globalChunkMod8 ChunklockTotalUnlockedChunks %= #8 Integers
scoreboard players operation #globalChunkMod16 ChunklockTotalUnlockedChunks = #global ChunklockTotalUnlockedChunks
scoreboard players operation #globalChunkMod16 ChunklockTotalUnlockedChunks %= #16 Integers
scoreboard players operation #globalChunkMod32 ChunklockTotalUnlockedChunks = #global ChunklockTotalUnlockedChunks
scoreboard players operation #globalChunkMod32 ChunklockTotalUnlockedChunks %= #32 Integers
scoreboard players operation #globalChunkMod64 ChunklockTotalUnlockedChunks = #global ChunklockTotalUnlockedChunks
scoreboard players operation #globalChunkMod64 ChunklockTotalUnlockedChunks %= #64 Integers
scoreboard players operation #globalChunkMod128 ChunklockTotalUnlockedChunks = #global ChunklockTotalUnlockedChunks
scoreboard players operation #globalChunkMod128 ChunklockTotalUnlockedChunks %= #128 Integers

# Chat message with player name who unlocked the chunk

# Very first Chunk Unlock. Play Sound and make global announcement. Global message in chat.
execute if score #global ChunklockTotalUnlockedChunks matches 1 run tellraw @a [{"selector":"@p[tag=itemThrower]","color":"gold","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"gold","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"gold"},{"text":". ", "color":"white","bold": false},{"text":"Chunklock","color":"gold","bold":true},{"text":" was made with love by ","color":"white","bold":false,"italic":true},{"text":"AvidMc","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Check out AvidMc on YouTube!"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/@AvidMc"}},{"text":" and ","color":"white","bold":false},{"text":"Quillbee","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"Check out Quillbee on YouTube!"}]},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/@Quillbee"}},{"text":"!","color":"white","bold":false}]
execute if score #global ChunklockTotalUnlockedChunks matches 1 run title @a[tag=!hideChunkUnlockTitle] title [{"text":"First Chunk Unlocked!","color":"gold"}]
execute if score #global ChunklockTotalUnlockedChunks matches 1 run title @a[tag=!hideChunkUnlockTitle] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"gold"}]
execute if score #global ChunklockTotalUnlockedChunks matches 1 run execute as @a at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 0.8
execute if score #global ChunklockTotalUnlockedChunks matches 1 run return 1

# Every 128 Chunks. Play Sound and make global announcement. Global message in chat.
execute if score #globalChunkMod128 ChunklockTotalUnlockedChunks matches 0 run tellraw @a [{"selector":"@p[tag=itemThrower]","color":"red","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"red","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"red"}]
execute if score #globalChunkMod128 ChunklockTotalUnlockedChunks matches 0 run title @a[tag=!hideChunkUnlockTitle] title [{"text":"Chunk ","color":"red"},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"red"}, {"text":" unlocked!","color":"red"}]
execute if score #globalChunkMod128 ChunklockTotalUnlockedChunks matches 0 run title @a[tag=!hideChunkUnlockTitle] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"red"}]
execute if score #globalChunkMod128 ChunklockTotalUnlockedChunks matches 0 run execute as @a at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 0.9
execute if score #globalChunkMod128 ChunklockTotalUnlockedChunks matches 0 run return 128

# Every 64 Chunks. Play Sound and make global announcement. Global message in chat.
execute if score #globalChunkMod64 ChunklockTotalUnlockedChunks matches 0 run tellraw @a [{"selector":"@p[tag=itemThrower]","color":"gold","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"gold","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"gold"}]
execute if score #globalChunkMod64 ChunklockTotalUnlockedChunks matches 0 run title @a[tag=!hideChunkUnlockTitle] title [{"text":"Chunk ","color":"gold"},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"gold"}, {"text":" unlocked!","color":"gold"}]
execute if score #globalChunkMod64 ChunklockTotalUnlockedChunks matches 0 run title @a[tag=!hideChunkUnlockTitle] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"gold"}]
execute if score #globalChunkMod64 ChunklockTotalUnlockedChunks matches 0 run execute as @a at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1
execute if score #globalChunkMod64 ChunklockTotalUnlockedChunks matches 0 run return 64

# Every 32 Chunks. Play Sound and make global announcement. Global message in chat.
execute if score #globalChunkMod32 ChunklockTotalUnlockedChunks matches 0 run tellraw @a [{"selector":"@p[tag=itemThrower]","color":"green","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"green","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"green"}]
execute if score #globalChunkMod32 ChunklockTotalUnlockedChunks matches 0 run title @a[tag=!hideChunkUnlockTitle] title [{"text":"Chunk ","color":"green"},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"green"}, {"text":" unlocked!","color":"green"}]
execute if score #globalChunkMod32 ChunklockTotalUnlockedChunks matches 0 run title @a[tag=!hideChunkUnlockTitle] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"green"}]
execute if score #globalChunkMod32 ChunklockTotalUnlockedChunks matches 0 run execute as @a at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.2
execute if score #globalChunkMod32 ChunklockTotalUnlockedChunks matches 0 run return 32

# Every 16 Chunks. Play Sound and make single-player announcement. Global message in chat.
execute if score #globalChunkMod16 ChunklockTotalUnlockedChunks matches 0 run tellraw @a [{"selector":"@p[tag=itemThrower]","color":"aqua","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"aqua","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"aqua"}]
execute if score #globalChunkMod16 ChunklockTotalUnlockedChunks matches 0 run title @p[tag=!hideChunkUnlockTitle,tag=itemThrower] title [{"text":"Chunk ","color":"aqua"},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"aqua"}, {"text":" unlocked!","color":"aqua"}]
execute if score #globalChunkMod16 ChunklockTotalUnlockedChunks matches 0 run title @p[tag=!hideChunkUnlockTitle,tag=itemThrower] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"aqua"}]
execute if score #globalChunkMod16 ChunklockTotalUnlockedChunks matches 0 run execute as @p[tag=itemThrower] at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 0.8
execute if score #globalChunkMod16 ChunklockTotalUnlockedChunks matches 0 run return 16

# Every 8 Chunks. Play Sound and make single-player announcement. Global message in chat.
execute if score #globalChunkMod8 ChunklockTotalUnlockedChunks matches 0 run tellraw @a [{"selector":"@p[tag=itemThrower]","color":"blue","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"blue","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"blue"}]
execute if score #globalChunkMod8 ChunklockTotalUnlockedChunks matches 0 run title @p[tag=!hideChunkUnlockTitle,tag=itemThrower] title [{"text":"Chunk ","color":"blue"},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"blue"}, {"text":" unlocked!","color":"blue"}]
execute if score #globalChunkMod8 ChunklockTotalUnlockedChunks matches 0 run title @p[tag=!hideChunkUnlockTitle,tag=itemThrower] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"blue"}]
execute if score #globalChunkMod8 ChunklockTotalUnlockedChunks matches 0 run execute as @p[tag=itemThrower] at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1.2
execute if score #globalChunkMod8 ChunklockTotalUnlockedChunks matches 0 run return 8

# Otherwise
tellraw @a [{"selector":"@p[tag=itemThrower]","color":"white","bold": true},{"text":" unlocked chunk ", "color":"white","bold": false},{"text":"#", "color":"white","bold": false},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"white"}]
title @p[tag=!hideChunkUnlockTitle,tag=itemThrower] title [{"text":"Chunk ","color":"white"},{"score":{"name":"#global","objective":"ChunklockTotalUnlockedChunks"}, "color":"white"}, {"text":" unlocked!","color":"white"}]
title @p[tag=!hideChunkUnlockTitle,tag=itemThrower] subtitle [{"text":"By "},{"selector":"@p[tag=itemThrower]","color":"white"}]
execute as @p[tag=itemThrower] at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 2
return 0
