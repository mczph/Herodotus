#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
//something that recipeutils can't do
recipes.removeByRecipeName("minecraft:crafting_table");
recipes.removeByRecipeName("minecraft:dark_oak_planks");
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.removeByRecipeName("minecraft:brich_planks");
recipes.removeByRecipeName("minecraft:jungle_planks");
//damn furnace
furnace.removeAll();

}
