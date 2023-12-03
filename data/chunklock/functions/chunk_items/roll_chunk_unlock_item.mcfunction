# This function should be run as the chunkItemInit. It looks at the chunk's current biome
# and sets the unlock item and base quantity given the biome.

loot replace entity @s weapon.mainhand loot chunklock:biome/all_biome

# TODO: LOW - Do we check the biome at multiple Y levels?
# TODO: HIGH - End outer islands should require small quanities of random items
execute if biome ~ ~ ~ badlands run loot replace entity @s weapon.mainhand loot chunklock:biome/badlands
execute if biome ~ ~ ~ bamboo_jungle run loot replace entity @s weapon.mainhand loot chunklock:biome/bamboo_jungle
execute if biome ~ ~ ~ basalt_deltas run loot replace entity @s weapon.mainhand loot chunklock:biome/basalt_deltas
execute if biome ~ ~ ~ beach run loot replace entity @s weapon.mainhand loot chunklock:biome/beach
execute if biome ~ ~ ~ birch_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/birch_forest
execute if biome ~ ~ ~ cherry_grove run loot replace entity @s weapon.mainhand loot chunklock:biome/cherry_grove
execute if biome ~ ~ ~ cold_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/cold_ocean
execute if biome ~ ~ ~ crimson_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/crimson_forest
execute if biome ~ ~ ~ dark_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/dark_forest
execute if biome ~ ~ ~ deep_cold_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/deep_cold_ocean
# TODO: LOW - better implement deep dark loot table
execute if biome ~ ~ ~ deep_dark run loot replace entity @s weapon.mainhand loot chunklock:biome/deep_dark
execute if biome ~ ~ ~ deep_frozen_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/deep_frozen_ocean
execute if biome ~ ~ ~ deep_frozen_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/deep_frozen_ocean
execute if biome ~ ~ ~ deep_lukewarm_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/deep_lukewarm_ocean
execute if biome ~ ~ ~ deep_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/deep_ocean
execute if biome ~ ~ ~ desert run loot replace entity @s weapon.mainhand loot chunklock:biome/desert
execute if biome ~ ~ ~ dripstone_caves run loot replace entity @s weapon.mainhand loot chunklock:biome/dripstone_caves
execute if biome ~ ~ ~ end_barrens run loot replace entity @s weapon.mainhand loot chunklock:biome/end_barrens
execute if biome ~ ~ ~ end_highlands run loot replace entity @s weapon.mainhand loot chunklock:biome/end_highlands
execute if biome ~ ~ ~ end_midlands run loot replace entity @s weapon.mainhand loot chunklock:biome/end_midlands
execute if biome ~ ~ ~ eroded_badlands run loot replace entity @s weapon.mainhand loot chunklock:biome/eroded_badlands
execute if biome ~ ~ ~ flower_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/flower_forest
execute if biome ~ ~ ~ forest run loot replace entity @s weapon.mainhand loot chunklock:biome/forest
execute if biome ~ ~ ~ frozen_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/frozen_ocean
execute if biome ~ ~ ~ frozen_peaks run loot replace entity @s weapon.mainhand loot chunklock:biome/frozen_peaks
execute if biome ~ ~ ~ frozen_river run loot replace entity @s weapon.mainhand loot chunklock:biome/frozen_river
execute if biome ~ ~ ~ grove run loot replace entity @s weapon.mainhand loot chunklock:biome/grove
execute if biome ~ ~ ~ ice_spikes run loot replace entity @s weapon.mainhand loot chunklock:biome/ice_spikes
execute if biome ~ ~ ~ jagged_peaks run loot replace entity @s weapon.mainhand loot chunklock:biome/jagged_peaks
execute if biome ~ ~ ~ jungle run loot replace entity @s weapon.mainhand loot chunklock:biome/jungle
execute if biome ~ ~ ~ lukewarm_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/lukewarm_ocean
execute if biome ~ ~ ~ lush_caves run loot replace entity @s weapon.mainhand loot chunklock:biome/lush_caves
execute if biome ~ ~ ~ mangrove_swamp run loot replace entity @s weapon.mainhand loot chunklock:biome/mangrove_swamp
execute if biome ~ ~ ~ meadow run loot replace entity @s weapon.mainhand loot chunklock:biome/meadow
execute if biome ~ ~ ~ mushroom_fields run loot replace entity @s weapon.mainhand loot chunklock:biome/mushroom_fields
execute if biome ~ ~ ~ nether_wastes run loot replace entity @s weapon.mainhand loot chunklock:biome/nether_wastes
execute if biome ~ ~ ~ ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/ocean
execute if biome ~ ~ ~ old_growth_birch_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/old_growth_birch_forest
execute if biome ~ ~ ~ old_growth_pine_taiga run loot replace entity @s weapon.mainhand loot chunklock:biome/old_growth_pine_taiga
execute if biome ~ ~ ~ old_growth_spruce_taiga run loot replace entity @s weapon.mainhand loot chunklock:biome/old_growth_spruce_taiga
execute if biome ~ ~ ~ plains run loot replace entity @s weapon.mainhand loot chunklock:biome/plains
execute if biome ~ ~ ~ river run loot replace entity @s weapon.mainhand loot chunklock:biome/river
execute if biome ~ ~ ~ savanna_plateau run loot replace entity @s weapon.mainhand loot chunklock:biome/savanna_plateau
execute if biome ~ ~ ~ savanna run loot replace entity @s weapon.mainhand loot chunklock:biome/savanna
execute if biome ~ ~ ~ small_end_islands run loot replace entity @s weapon.mainhand loot chunklock:biome/small_end_islands
execute if biome ~ ~ ~ snowy_beach run loot replace entity @s weapon.mainhand loot chunklock:biome/snowy_beach
execute if biome ~ ~ ~ snowy_plains run loot replace entity @s weapon.mainhand loot chunklock:biome/snowy_plains
execute if biome ~ ~ ~ snowy_slopes run loot replace entity @s weapon.mainhand loot chunklock:biome/snowy_slopes
execute if biome ~ ~ ~ snowy_taiga run loot replace entity @s weapon.mainhand loot chunklock:biome/snowy_taiga
execute if biome ~ ~ ~ soul_sand_valley run loot replace entity @s weapon.mainhand loot chunklock:biome/soul_sand_valley
execute if biome ~ ~ ~ sparse_jungle run loot replace entity @s weapon.mainhand loot chunklock:biome/sparse_jungle
execute if biome ~ ~ ~ stony_peaks run loot replace entity @s weapon.mainhand loot chunklock:biome/stony_peaks
execute if biome ~ ~ ~ stony_shore run loot replace entity @s weapon.mainhand loot chunklock:biome/stony_shore
execute if biome ~ ~ ~ sunflower_plains run loot replace entity @s weapon.mainhand loot chunklock:biome/sunflower_plains
execute if biome ~ ~ ~ swamp run loot replace entity @s weapon.mainhand loot chunklock:biome/swamp
execute if biome ~ ~ ~ taiga run loot replace entity @s weapon.mainhand loot chunklock:biome/taiga
execute if biome ~ ~ ~ the_end run loot replace entity @s weapon.mainhand loot chunklock:biome/the_end
execute if biome ~ ~ ~ warm_ocean run loot replace entity @s weapon.mainhand loot chunklock:biome/warm_ocean
execute if biome ~ ~ ~ warped_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/warped_forest
execute if biome ~ ~ ~ windswept_forest run loot replace entity @s weapon.mainhand loot chunklock:biome/windswept_forest
execute if biome ~ ~ ~ windswept_gravelly_hills run loot replace entity @s weapon.mainhand loot chunklock:biome/windswept_gravelly_hills
execute if biome ~ ~ ~ windswept_hills run loot replace entity @s weapon.mainhand loot chunklock:biome/windswept_hills
execute if biome ~ ~ ~ windswept_savanna run loot replace entity @s weapon.mainhand loot chunklock:biome/windswept_savanna
execute if biome ~ ~ ~ wooded_badlands run loot replace entity @s weapon.mainhand loot chunklock:biome/wooded_badlands
