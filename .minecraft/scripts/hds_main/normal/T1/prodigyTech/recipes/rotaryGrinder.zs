#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.rotarygrinder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

rotarygrinder.addRecipe(<ore:rockIron>, <ore:crushedOreIron>.materialPart);
rotarygrinder.addRecipe(<pyrotech:rock:8>, <ore:dustLimestone>.firstItem);
rotarygrinder.addRecipe(<ore:shardCopper>, <ore:dustSmallCopper>.materialPart * 2);
rotarygrinder.addRecipe(<ore:shardTin>, <ore:dustSmallTin>.materialPart * 2);
rotarygrinder.addRecipe(<astralsorcery:blockcustomore:1>, <astralsorcery:itemcraftingcomponent:2>);
rotarygrinder.addRecipe(<minecraft:coal:1>, <pyrotech:material:15>*8);
}