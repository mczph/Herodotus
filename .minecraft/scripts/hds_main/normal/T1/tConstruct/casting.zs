#packmode normal
#priority -1

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Casting.addTableRecipe(<contenttweaker:copper_cast>, null, <liquid:copper>, 288);
Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
Casting.removeTableRecipe(<tconstruct:cast_custom:3>);
Casting.removeBasinRecipe(<pyrotech:material:4>, <liquid:clay>);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <ore:gearStone>, <liquid:alubrass>, 144, true, 200);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <pyrotech:cog_bone>, <liquid:alubrass>, 144, true, 200);
Casting.addTableRecipe(<tconstruct:cast_custom:4>, <pyrotech:cog_flint>, <liquid:alubrass>, 144, true, 200);
Casting.addBasinRecipe(<ore:oreGlass>.materialPart, <minecraft:stone>, <liquid:glass>, 4000, true, 15 * 20);
Casting.addBasinRecipe(<contenttweaker:raw_iron_block>, null, <liquid:molten_raw_iron>, 1000, false, 30 * 20);
}
