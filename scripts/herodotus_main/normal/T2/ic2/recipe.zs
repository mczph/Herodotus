#packmode normal
#modloaded bathappymod
#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

var ru = <ore:itemRubber>;
recipes.addShaped("thermalsintering", <ic2:crafting:7>,[
    [ru,<ore:plateCopper>,ru],
    [ru,<ic2:crafting:1>,ru,],
    [ru,<ore:plateCopper>,ru]
]);

recipes.addShaped("advcircuit", <ic2:crafting:2>,[
    [<fluxnetworks:flux>,<ore:dustGlowstone>,<fluxnetworks:flux>],
    [<botania:manaresource>,<ic2:crafting:1>,<botania:manaresource>],
    [<fluxnetworks:flux>,<ore:dustGlowstone>,<fluxnetworks:flux>]
]);