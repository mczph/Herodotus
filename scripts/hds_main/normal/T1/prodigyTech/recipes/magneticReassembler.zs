#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.magneticreassembler;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

magneticreassembler.addRecipe(<ore:crushedOreIron>, <ore:oreCentrifugedIron>.materialPart);
}