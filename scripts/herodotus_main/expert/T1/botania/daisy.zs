#packmode expert
#modloaded bathappymod
#priority -100

import mods.botania.PureDaisy;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//remove the original daisy craftings
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);

//adding new ones
mods.botania.PureDaisy.addRecipe(<chisel:planks-oak:3>,<botania:livingwood>, 300);
mods.botania.PureDaisy.addRecipe(<chisel:stonebrick:7>,<botania:livingrock>, 300);