#packmode normal
#priority -1

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
    <actuallyadditions:flax_seed>,
    <actuallyadditions:rice_seed>,
    <actuallyadditions:coffee_seed>,
    <teslathingies:tesla_plant_seeds>,
    <xlfoodmod:rice>,
    <xlfoodmod:tomato_seeds>,
    <xlfoodmod:tettuce_seeds>,
    <xlfoodmod:rice_seeds>,
    <xlfoodmod:cucumber_seeds>
];

for seed in toMulch {
    CompostBin.addRecipe(<pyrotech:mulch>, seed);
}

for sapling in <ore:treeSapling>.items {
    CompostBin.addRecipe(<pyrotech:mulch>, sapling);
}


}
