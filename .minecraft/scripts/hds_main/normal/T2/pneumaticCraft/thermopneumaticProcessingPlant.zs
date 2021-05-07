#packmode normal
#priority -1

import mods.pneumaticcraft.thermopneumaticprocessingplant;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val map as IItemStack[ILiquidStack] = {
    <liquid:rhombus_plastic> : <contenttweaker:rhombus>,
    <liquid:square_plastic> : <contenttweaker:square>,
    <liquid:spherical_plastic> : <contenttweaker:spherical>
};

for liquid, item in map {
    thermopneumaticprocessingplant.addRecipe(<liquid:plastic> * 125, item, 1.8, 373, liquid * 250);
}
thermopneumaticprocessingplant.addRecipe(<liquid:distilledwater> * 1000, <contenttweaker:wood_feature_crystal>, 2.0, 393, <liquid:lively_water> * 1000);
}