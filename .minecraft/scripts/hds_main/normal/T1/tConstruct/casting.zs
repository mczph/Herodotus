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
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:alubrass>, 144, true, 200);
Casting.addTableRecipe(<hdsutils:copper_bucket>, <pyrotech:bucket_clay_unfired>, <liquid:copper>, 144 * 3, true, 200);
}