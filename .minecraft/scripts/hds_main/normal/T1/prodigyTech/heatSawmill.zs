#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.heatsawmill;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.utils.wood.log2PlankMap;

if(!isInvalid){

heatsawmill.removeAll();
heatsawmill.addRecipe(<astralsorcery:blockmarble:1>, <astralsorcery:blockmarbleslab>*2);
heatsawmill.addRecipe(<ore:plankWood>, <pyrotech:material:20> * 2);

for log, plank in log2PlankMap {
    heatsawmill.addRecipe(log, plank * 4);
}

heatsawmill.addRecipe(<minecraft:sandstone>, <minecraft:stone_slab:1>*2);
heatsawmill.addRecipe(<minecraft:sandstone:1>, <minecraft:stone_slab:1>*2);
heatsawmill.addRecipe(<minecraft:sandstone:2>, <minecraft:stone_slab:1>*2);

heatsawmill.addRecipe(<minecraft:red_sandstone>, <minecraft:stone_slab2>*2);
heatsawmill.addRecipe(<minecraft:red_sandstone:1>, <minecraft:stone_slab2>*2);
heatsawmill.addRecipe(<minecraft:red_sandstone:2>, <minecraft:stone_slab2>*2);

heatsawmill.addRecipe(<minecraft:brick_block>, <minecraft:stone_slab:4>*2);

heatsawmill.addRecipe(<minecraft:stonebrick>, <minecraft:stone_slab:5>*2);
heatsawmill.addRecipe(<minecraft:stonebrick:3>, <minecraft:stone_slab:5>*2);
heatsawmill.addRecipe(<minecraft:nether_brick>, <minecraft:stone_slab:6>*2);
heatsawmill.addRecipe(<minecraft:quartz_block>, <minecraft:stone_slab:7>*2);
heatsawmill.addRecipe(<minecraft:quartz_block:1>, <minecraft:stone_slab:7>*2);
heatsawmill.addRecipe(<minecraft:quartz_block:2>, <minecraft:stone_slab:7>*2);
heatsawmill.addRecipe(<minecraft:cobblestone>, <minecraft:stone_slab:3>*2);
heatsawmill.addRecipe(<minecraft:stone>, <minecraft:stone_slab>*2);
heatsawmill.addRecipe(<minecraft:stone_slab:5>, <pyrotech:material:16>*2);
heatsawmill.addRecipe(<minecraft:purpur_block>, <minecraft:purpur_slab>*2);
}
