#packmode normal
#priority -1

import mods.pneumaticcraft.thermopneumaticprocessingplant as TPP;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

val map as IItemStack[ILiquidStack] = {
    <liquid:rhombus_plastic> : <contenttweaker:rhombus>,
    <liquid:square_plastic> : <contenttweaker:square>,
    <liquid:spherical_plastic> : <contenttweaker:spherical>
};

TPP.removeRecipe(<liquid:plastic>);

for liquid, item in map {
    TPP.addRecipe(<liquid:plastic> * 125, item, 1.4, 373, liquid * 250);
}
TPP.addRecipe(<liquid:distilledwater> * 1000, <contenttweaker:wood_feather_crystal>, 1.0, 393, <liquid:lively_water> * 1000);
TPP.addRecipe(<liquid:lpg> * 100, <ore:dustSmallCoal>.materialPart, 0.0, 393, <liquid:plastic> * 1000);
TPP.addRecipe(<liquid:lively_water> * 1000, <ore:ingotIron>.materialPart, 1.6, 393, <liquid:molten_river_iron> * 144);
TPP.addRecipe(<liquid:lively_water> * 1000, <ore:ingotCopper>.materialPart, 1.6, 393, <liquid:molten_river_copper> * 144);
TPP.addRecipe(<liquid:lively_water> * 1000, <ore:ingotNickel>.materialPart, 1.6, 393, <liquid:molten_river_nickel> * 144);
TPP.addRecipe(<liquid:lively_water> * 1000, <ore:squareRed>.materialPart, 1.8, 393, <liquid:molten_river_nickel> * 72);


}
