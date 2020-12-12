#packmode normal
#modloaded bathappymod
#priority -100

import mods.botania.ManaInfusion;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//remove
mods.botania.ManaInfusion.removeRecipe(<botania:tinypotato>);
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:2>);

//add
mods.botania.ManaInfusion.addInfusion(<contenttweaker:mic_quartz>, <appliedenergistics2:quartz_ore>, 2000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 1000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:2>, <ore:gemDiamond>, 10000);