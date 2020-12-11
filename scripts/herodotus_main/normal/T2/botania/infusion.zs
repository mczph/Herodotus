#packmode normal
#modloaded bathappymod
#priority -100

import mods.botania.ManaInfusion;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//add the micquartz recipe
mods.botania.ManaInfusion.addInfusion(<contenttweaker:mic_quartz>, <appliedenergistics2:quartz_ore>, 2000);

//remove the tiny potato recipe, see elvenTrade.zs for new recipe
mods.botania.ManaInfusion.removeRecipe(<botania:tinypotato>);