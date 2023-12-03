# Store player's UUID
execute store result score @s Uuid1 run data get entity @s UUID[0]
execute store result score @s Uuid2 run data get entity @s UUID[1]
execute store result score @s Uuid3 run data get entity @s UUID[2]
execute store result score @s Uuid4 run data get entity @s UUID[3]

# Enable trigger commands for this player
scoreboard players enable @s ChunkReroll
scoreboard players enable @s ChunkDifficulty
scoreboard players enable @s ChunkUninstall
scoreboard players enable @s ChunkSpreadPlayers
scoreboard players enable @s ChunkHideUnlockTitle
scoreboard players enable @s ChunkShowUnlockTitle

tag @s add playerInit
