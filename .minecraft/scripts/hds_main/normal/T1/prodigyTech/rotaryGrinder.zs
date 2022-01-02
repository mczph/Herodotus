#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.rotarygrinder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){ 

rotarygrinder.removeRecipe(<ore:cobblestone>);

rotarygrinder.addRecipe(<minecraft:cobblestone>, <pyrotech:rock>*8);
rotarygrinder.addRecipe(<ore:cobblestoneGranite>, <pyrotech:rock:1>*8);
rotarygrinder.addRecipe(<ore:cobblestoneDiorite>, <pyrotech:rock:2>*8);
rotarygrinder.addRecipe(<ore:cobblestoneAndesite>, <pyrotech:rock:3>*8);
rotarygrinder.addRecipe(<ore:cobblestoneLimestone>, <pyrotech:rock:8>*8);

rotarygrinder.addRecipe(<ore:rockIron>, <ore:crushedOreIron>.materialPart);
rotarygrinder.addRecipe(<ore:squareRed>.materialPart, <ore:rockIron>.materialPart);
rotarygrinder.addRecipe(<pyrotech:rock:8>, <ore:dustLimestone>.firstItem);
rotarygrinder.addRecipe(<ore:shardCopper>, <ore:dustSmallCopper>.materialPart * 2);
rotarygrinder.addRecipe(<ore:shardTin>, <ore:dustSmallTin>.materialPart * 2);
rotarygrinder.addRecipe(<astralsorcery:blockcustomore:1>, <astralsorcery:itemcraftingcomponent:2>);
rotarygrinder.addRecipe(<minecraft:coal:1>, <pyrotech:material:15>*8);
}
