#packmode expert
#modloaded bathappymod
#priority -100

import mods.botania.ManaInfusion;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//remove
mods.botania.ManaInfusion.removeRecipe(<botania:tinypotato>);
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);

//add
mods.botania.ManaInfusion.addInfusion(<contenttweaker:mic_quartz>, <appliedenergistics2:quartz_ore>, 4000);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 2000);