#packmode normal
#priority -1

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Casting.addTableRecipe(<contenttweaker:copper_cast>, null, <liquid:copper>, 288);

//TODO add the copper cast recipes and textures, see cotlib.zs and item.zs for IDs and part names.
}