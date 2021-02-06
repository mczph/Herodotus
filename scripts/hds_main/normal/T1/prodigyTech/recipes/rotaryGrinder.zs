#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.rotarygrinder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

rotarygrinder.addRecipe(<ore:rockIron>, <ore:crushedOreIron>.firstItem);
}