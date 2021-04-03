#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.magneticraft.CrushingTable;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

// `<minecraft:stone>, 0.0, 50, true` is for no secondary output.
CrushingTable.addRecipe(<pneumaticcraft:plastic:8>, <emergingtechnology:shreddedplastic>, true);
}