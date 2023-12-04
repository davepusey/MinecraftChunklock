bossbar add cud {"text":"Chunk Unlocking Disabled","bold":true,"color":"red"}
bossbar set minecraft:cud color red
bossbar set minecraft:cud value 100
bossbar set minecraft:cud players @a

execute if score davepusey UnlockingDisabled matches 1 run bossbar set minecraft:cud visible true
execute unless score davepusey UnlockingDisabled matches 1 run bossbar set minecraft:cud visible false