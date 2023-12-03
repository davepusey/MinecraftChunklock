playsound entity.item.break player @a ~ ~ ~
# Stop the projectile and render it harmless
data merge entity @s {Motion: [0, 0, 0], inGround: 1b, DealtDamage: 1b}
tag @s add projectileCollided
