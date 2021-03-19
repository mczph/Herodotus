#packmode normal
#priority -1

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Casting.addTableRecipe(<contenttweaker:copper_cast>, null, <liquid:copper>, 288);
Casting.addBasinRecipe(<ore:oreGlass>.materialPart, <minecraft:stone>, <liquid:glass>, 4000);
Casting.addBasinRecipe(<ore:oreGlass>.materialPart, <minecraft:stone>, <liquid:glass>, 4000);
}