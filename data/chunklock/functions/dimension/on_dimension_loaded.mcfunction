# Unlock the new chunk immediately
function chunklock:utils/find_current_chunk
execute as @e[type=marker,tag=currentChunk,tag=locked,limit=1] run function chunklock:utils/unlock_current_chunk
function chunklock:utils/done_with_current_chunk

tag @s remove awaitingDimensionLoad
