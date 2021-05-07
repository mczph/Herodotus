#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.magneticreassembler;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

magneticreassembler.addRecipe(<minecraft:quartz>, <ore:dustQuartz>.materialPart);
magneticreassembler.removeRecipe(<ore:dustEnergion>);
magneticreassembler.removeRecipe(<ore:dustIron>);
magneticreassembler.addRecipe(<ore:dustIron>, <ore:ingotIron>.materialPart);
magneticreassembler.removeRecipe(<ore:dustTinyIron>);
magneticreassembler.addRecipe(<ore:dustTinyIron>, <ore:nuggetIron>.materialPart);
}