# Reroll chunk is meant to be run by a user.
# This function assumes the user is looking at the chunk they intend to reroll
# TODO: MEDIUM Make some kind of penalty or cost for this?
# TODO: LOW Some kind of error message if no chunk was found for reroll

execute if score #global ChunklockDifficulty matches 2.. run tellraw @s {"text": "This command is disabled on Normal, Hard and Impossible difficulties!", "color": "red"}
execute if score #global ChunklockDifficulty matches 2.. run return 0

execute if dimension minecraft:overworld positioned ~ 128 ~ positioned ^ ^ ^2 unless entity @e[type=marker,tag=locked,sort=nearest,distance=..9,limit=1] run tellraw @s {"text": "No locked chunk could be found!", "color": "red"}
execute if dimension minecraft:the_nether positioned ~ 64 ~ positioned ^ ^ ^2 unless entity @e[type=marker,tag=locked,sort=nearest,distance=..9,limit=1] run tellraw @s {"text": "No locked chunk could be found!", "color": "red"}
execute if dimension minecraft:the_end positioned ~ 64 ~ positioned ^ ^ ^2 unless entity @e[type=marker,tag=locked,sort=nearest,distance=..9,limit=1] run tellraw @s {"text": "No locked chunk could be found!", "color": "red"}

execute if dimension minecraft:overworld positioned ~ 128 ~ positioned ^ ^ ^2 as @e[type=marker,tag=locked,sort=nearest,distance=..9,limit=1] at @s run function chunklock:chunk_items/reset_chunk_items
execute if dimension minecraft:the_nether positioned ~ 64 ~ positioned ^ ^ ^2 as @e[type=marker,tag=locked,sort=nearest,distance=..9,limit=1] at @s run function chunklock:chunk_items/reset_chunk_items
execute if dimension minecraft:the_end positioned ~ 64 ~ positioned ^ ^ ^2 as @e[type=marker,tag=locked,sort=nearest,distance=..9,limit=1] at @s run function chunklock:chunk_items/reset_chunk_items

scoreboard players add #global ChunklockChunksRerolled 1
scoreboard players add @s ChunklockChunksRerolled 1
