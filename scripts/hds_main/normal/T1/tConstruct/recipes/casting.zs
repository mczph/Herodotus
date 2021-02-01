#packmode normal
#priority -1

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Casting.addTableRecipe(<contenttweaker:copper_cast>, null, <liquid:copper>, 288);

//TODO fix with single copper nugget cast
Casting.addTableRecipe(<ore:nuggetCopper>.firstItem*4, <contenttweaker:copper_cast>, <liquid:copper>, 576);
Casting.addTableRecipe(<ore:nuggetBronze>.firstItem*4, <contenttweaker:copper_cast>, <liquid:bronze>, 576);
}