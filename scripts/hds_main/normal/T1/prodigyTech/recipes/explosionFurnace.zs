#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.explosionfurnace.recipes;
import mods.prodigytech.explosionfurnace.explosives;
import mods.prodigytech.explosionfurnace.dampeners;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    recipes.addRecipe(<contenttweaker:dark_energion_crystal_seed>, <prodigytech:energion_crystal_seed>, 2880);
}