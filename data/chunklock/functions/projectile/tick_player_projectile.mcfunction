# TODO: LOW - Fast-moving projectiles can penetrate slightly into locked chunks
# (for example, they can sometimes hit End Crystals inside locked chunks).
# Not sure what we can do about this - it seems like the commands just aren't
# run fast enough to cope with high-speed projectiles.
function chunklock:utils/find_current_chunk
execute if entity @e[type=marker,tag=currentChunk,tag=locked] run function chunklock:projectile/projectile_entered_locked_chunk
function chunklock:utils/done_with_current_chunk
