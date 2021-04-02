#packmode normal
#priority -1

import mods.pneumaticcraft.thermopneumaticprocessingplant;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

val map as IItemStack[ILiquidStack] = {
    <liquid:rhombus_plastic> : <contenttweaker:rhombus>,
    <liquid:square_plastic> : <contenttweaker:square>,
    <liquid:rhombus_plastic> : <contenttweaker:rhombus>
};

for liquid, item in map {
    thermopneumaticprocessingplant.addRecipe(<liquid:plastic> * 125, item, 1.8, 373, liquid * 250);
}