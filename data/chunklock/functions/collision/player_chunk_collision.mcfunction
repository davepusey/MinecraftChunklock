# Prevent entry into locked chunks
function chunklock:utils/find_current_chunk
execute if entity @e[type=marker,tag=currentChunk,tag=locked] run function chunklock:collision/exit_locked_chunk
function chunklock:utils/done_with_current_chunk
