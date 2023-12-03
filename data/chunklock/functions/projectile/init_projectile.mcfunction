# Store owner's UUID
execute store result score @s Uuid1 run data get entity @s Owner[0]
execute store result score @s Uuid2 run data get entity @s Owner[1]
execute store result score @s Uuid3 run data get entity @s Owner[2]
execute store result score @s Uuid4 run data get entity @s Owner[3]

tag @s add projectileInit
