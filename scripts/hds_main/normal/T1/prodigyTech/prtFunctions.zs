#packmode normal
#priority 1500

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.explosionfurnace.recipes;
import mods.prodigytech.explosionfurnace.explosives;
import mods.prodigytech.explosionfurnace.dampeners;

//Lime powder and Oredict stuffs in Explosion furnace Recipes(LOER)
function LOERProcesser(input as IOreDictEntry, output as IItemStack){
    recipes.addRecipe(input, output, 45, <pyrotech:material:22>, 5);
}