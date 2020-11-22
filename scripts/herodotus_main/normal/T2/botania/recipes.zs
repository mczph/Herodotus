#packmode normal
#modloaded bathappymod
#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val lr = <botania:livingrock>;
recipes.addShaped("smallmanapool", <botania:pool:2>,[
    [null,null,null],
    [lr,null,lr,],
    [lr,lr,lr]
]);