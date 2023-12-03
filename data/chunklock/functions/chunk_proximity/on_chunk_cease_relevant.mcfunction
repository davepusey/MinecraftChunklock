# Kill item displays
function chunklock:chunk_items/kill_chunk_items

# Kill all interaction entities directly above and below us
execute positioned ~-0.5 ~-500 ~-0.5 run kill @e[type=minecraft:interaction,tag=chunklock,dx=1,dy=9999,dz=1]
