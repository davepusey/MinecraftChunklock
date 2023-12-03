# Currently these work exactly the same as other projectiles, but I am keeping
# them separate for now in case we want to do something different with pearls
# later.

function chunklock:utils/find_current_chunk
execute if entity @e[type=marker,tag=currentChunk,tag=locked] run function chunklock:pearl/pearl_entered_locked_chunk
function chunklock:utils/done_with_current_chunk
