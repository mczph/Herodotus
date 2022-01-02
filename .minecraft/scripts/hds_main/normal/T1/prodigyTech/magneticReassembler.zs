#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.magneticreassembler as mr;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    
mr.addRecipe(<minecraft:quartz>, <ore:dustQuartz>.materialPart);
mr.removeRecipe(<ore:dustEnergion>);
mr.removeRecipe(<ore:dustIron>);
mr.addRecipe(<ore:dustIron>, <ore:ingotIron>.materialPart);
mr.removeRecipe(<ore:dustTinyIron>);
mr.addRecipe(<ore:dustTinyIron>, <ore:nuggetIron>.materialPart);
}
