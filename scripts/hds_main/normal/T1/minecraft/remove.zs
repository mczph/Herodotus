#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
//something that recipeutils can't do
recipes.removeByRecipeName("minecraft:crafting_table");

//damn furnace
furnace.removeAll();

}
