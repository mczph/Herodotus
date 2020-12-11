#packmode normal expert
#modloaded bathappymod
#priority 0

import mods.tconstruct.Casting;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//you might want this
furnace.remove(<xlfoodmod:flesh>);
furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>);

//no casts for you
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:4>);
mods.tconstruct.Casting.removeTableRecipe(<tconstruct:cast_custom:3>);