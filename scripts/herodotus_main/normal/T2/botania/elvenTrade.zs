#packmode normal
#modloaded bathappymod
#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


//No exOpenCrates for you
val exoc = itemUtils.getItemsByRegexRegistryName("botania_tweaks:*_extended_crafty_crate");
for remove in exoc{
    mods.botania.ElvenTrade.removeRecipe(remove);
}

//T I N Y P O T A T O
mods.botania.ElvenTrade.addRecipe([<botania:tinypotato>], [<minecraft:potato>]);