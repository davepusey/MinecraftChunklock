# Refresh our position marker, unless we are in a locked chunk.
# Our position marker should always be located at our last "good" position.
function chunklock:utils/find_current_chunk
execute unless entity @e[type=marker,tag=currentChunk,tag=locked] run function chunklock:collision/refresh_position_marker
function chunklock:utils/done_with_current_chunk
