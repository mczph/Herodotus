#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.pyrotech.CompostBin;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val toMulch as IItemStack[] = [
    <actuallyadditions:item_canola_seed>,
    <growthcraft_milk:thistle_seed>,
    <growthcraft_milk:thistle>,
    <growthcraft_rice:rice>,
    <actuallyadditions:item_food:16>,
    <actuallyadditions:item_misc:13>,
    <actuallyadditions:item_coffee_beans>,
    <actuallyadditions:block_black_lotus>,
    <actuallyadditions:item_flax_seed>,
    <actuallyadditions:item_rice_seed>,
    <actuallyadditions:item_coffee_seed>,
    <teslathingies:tesla_plant_seeds>,
    <xlfoodmod:rice>,
    <xlfoodmod:tomato_seeds>,
    <xlfoodmod:lettuce_seeds>,
    <xlfoodmod:rice_seeds>,
    <xlfoodmod:cucumber_seeds>,
    <xlfoodmod:strawberry_seeds>,
    <xlfoodmod:corn_seeds>
];

for seed in toMulch {
    CompostBin.addRecipe(<pyrotech:mulch>, seed);
}

for sapling in <ore:treeSapling>.items {
    CompostBin.addRecipe(<pyrotech:mulch>, sapling);
}


}
