#packmode expert
#modloaded bathappymod
#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.tconstruct.Drying;

//remove
mods.tconstruct.Drying.removeRecipe(<minecraft:leather>);
mods.tconstruct.Drying.removeRecipe(<tconstruct:materials:2>);

//add
mods.tconstruct.Drying.addRecipe(<tconstruct:materials:2>,<notreepunching:clay_brick>, 100);